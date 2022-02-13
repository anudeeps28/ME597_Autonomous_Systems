#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

# structuring as class to share memory location
class ClassName: 
    def __init__(self):
            self.dist = 0
            self.data = 0

    def scan_callback(self, data):
        # data will contain the message information of type LaserScan, we can access and print that data as follows.
        self.dist = rospy.loginfo('Received ctr:{}'.format(data.ranges[0])) 
        
    def controller_node(self):
        # Create a publisher object with Twist
        pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
        # Declare the node, and register it with a unique name
        rospy.init_node('my_control_node', anonymous=True)
        # Define the execution rate object (10Hz)
        rate = rospy.Rate(10)

        # Define a subscriber that will catch the messages published by scan
        # Observe how the subscription has to match use some of the parameters defined for the publisher.
        rospy.Subscriber("/scan", LaserScan, self.scan_callback)
        # This node doesn't have to run all the time, but whenever a message is received, therefore, we can leave it spinning (waiting to wake up whenever a message is available).
        rospy.spin()


        '''
            This is the main node loop
        '''
        while not rospy.is_shutdown():
            # Create message object with a specific type
            vel_msg = Twist()

            # Populate custom message object
            vel_msg.linear.x = 0.5 * (self.dist - 1) #giving the velocity as function of distance so that it stops after reaching the end
            vel_msg.angular.z = 0
            # Log/trace information on console
            rospy.loginfo('[my_control_node] Running')
            # Publish the data
            pub.publish(vel_msg)
            # Sleep the necessary amount of time to keep a 10Hz execution rate
            rate.sleep()


if __name__ == '__main__':
    try:
        c1 = ClassName()
        c1.controller_node()
    
    except rospy.ROSInterruptException:
        pass    
