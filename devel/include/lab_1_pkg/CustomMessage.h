// Generated by gencpp from file lab_1_pkg/CustomMessage.msg
// DO NOT EDIT!


#ifndef LAB_1_PKG_MESSAGE_CUSTOMMESSAGE_H
#define LAB_1_PKG_MESSAGE_CUSTOMMESSAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab_1_pkg
{
template <class ContainerAllocator>
struct CustomMessage_
{
  typedef CustomMessage_<ContainerAllocator> Type;

  CustomMessage_()
    : text()
    , ctr(0)  {
    }
  CustomMessage_(const ContainerAllocator& _alloc)
    : text(_alloc)
    , ctr(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_type;
  _text_type text;

   typedef uint32_t _ctr_type;
  _ctr_type ctr;





  typedef boost::shared_ptr< ::lab_1_pkg::CustomMessage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab_1_pkg::CustomMessage_<ContainerAllocator> const> ConstPtr;

}; // struct CustomMessage_

typedef ::lab_1_pkg::CustomMessage_<std::allocator<void> > CustomMessage;

typedef boost::shared_ptr< ::lab_1_pkg::CustomMessage > CustomMessagePtr;
typedef boost::shared_ptr< ::lab_1_pkg::CustomMessage const> CustomMessageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab_1_pkg::CustomMessage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab_1_pkg::CustomMessage_<ContainerAllocator1> & lhs, const ::lab_1_pkg::CustomMessage_<ContainerAllocator2> & rhs)
{
  return lhs.text == rhs.text &&
    lhs.ctr == rhs.ctr;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab_1_pkg::CustomMessage_<ContainerAllocator1> & lhs, const ::lab_1_pkg::CustomMessage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab_1_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab_1_pkg::CustomMessage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab_1_pkg::CustomMessage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_1_pkg::CustomMessage_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f270c9e1ed486ac779de04b681128fb";
  }

  static const char* value(const ::lab_1_pkg::CustomMessage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f270c9e1ed486acULL;
  static const uint64_t static_value2 = 0x779de04b681128fbULL;
};

template<class ContainerAllocator>
struct DataType< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab_1_pkg/CustomMessage";
  }

  static const char* value(const ::lab_1_pkg::CustomMessage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string text\n"
"uint32 ctr\n"
;
  }

  static const char* value(const ::lab_1_pkg::CustomMessage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.text);
      stream.next(m.ctr);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CustomMessage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab_1_pkg::CustomMessage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab_1_pkg::CustomMessage_<ContainerAllocator>& v)
  {
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text);
    s << indent << "ctr: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ctr);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB_1_PKG_MESSAGE_CUSTOMMESSAGE_H
