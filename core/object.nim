#import 
  #list, variant, set, map, vmap

##
###define VARIANT_ARG_LIST const Variant& p_arg1=Variant(),const Variant& p_arg2=Variant(),const Variant& p_arg3=Variant(),const Variant& p_arg4=Variant(),const Variant& p_arg5=Variant()
###define VARIANT_ARG_PASS p_arg1,p_arg2,p_arg3,p_arg4,p_arg5
###define VARIANT_ARG_DECLARE const Variant& p_arg1,const Variant& p_arg2,const Variant& p_arg3,const Variant& p_arg4,const Variant& p_arg5
###define VARIANT_ARG_MAX 5
###define VARIANT_ARGPTRS const Variant *argptr[5]={&p_arg1,&p_arg2,&p_arg3,&p_arg4,&p_arg5};
###define VARIANT_ARGPTRS_PASS *argptr[0],*argptr[1],*argptr[2],*argptr[3],*argptr[4]
###define VARIANT_ARGS_FROM_ARRAY(m_arr) m_arr[0],m_arr[1],m_arr[2],m_arr[3],m_arr[4]
##
##*
##@author Juan Linietsky <reduzio@gmail.com>
##

#type 
  #PropertyHint* = enum 
    #PROPERTY_HINT_NONE,       #/< no hint provided.
    #PROPERTY_HINT_RANGE,      #/< hint_text = "min,max,step"
    #PROPERTY_HINT_EXP_RANGE,  #/< hint_text = "min,max,step", exponential edit
    #PROPERTY_HINT_ENUM,       #/< hint_text= "val1,val2,val3,etc"
    #PROPERTY_HINT_EXP_EASING, #/ exponential easing funciton (Math::ease)
    #PROPERTY_HINT_LENGTH,     #/< hint_text= "length" (as integer)
    #PROPERTY_HINT_KEY_ACCEL,  #/< hint_text= "length" (as integer)
    #PROPERTY_HINT_FLAGS,      #/< hint_text= "flag1,flag2,etc" (as bit flags)
    #PROPERTY_HINT_ALL_FLAGS, PROPERTY_HINT_FILE, #/< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc," 
    #PROPERTY_HINT_DIR,        #/< a directort path must be passed
    #PROPERTY_HINT_GLOBAL_FILE, #/< a file path must be passed, hint_text (optionally) is a filter "*.png,*.wav,*.doc,"
    #PROPERTY_HINT_GLOBAL_DIR, #/< a directort path must be passed
    #PROPERTY_HINT_RESOURCE_TYPE, #/< a resource object type
    #PROPERTY_HINT_MULTILINE_TEXT, #/< used for string properties that can contain multiple lines	
    #PROPERTY_HINT_COLOR_NO_ALPHA, #/< used for ignoring alpha component when editing a color
    #PROPERTY_HINT_IMAGE_COMPRESS_LOSSY, PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS, 
    #PROPERTY_HINT_MAX


#type 
  #PropertyUsageFlags* = enum 
    #PROPERTY_USAGE_STORAGE = 1, PROPERTY_USAGE_EDITOR = 2, 
    #PROPERTY_USAGE_NETWORK = 4, PROPERTY_USAGE_EDITOR_HELPER = 8, PROPERTY_USAGE_CHECKABLE = 16, #used for editing global variables
    #PROPERTY_USAGE_CHECKED = 32, #used for editing global variables
    #PROPERTY_USAGE_INTERNATIONALIZED = 64, #hint for internationalized strings
    #PROPERTY_USAGE_BUNDLE = 128, #used for optimized bundles
    #PROPERTY_USAGE_CATEGORY = 256, PROPERTY_USAGE_STORE_IF_NONZERO = 512, #only store if nonzero
    #PROPERTY_USAGE_NO_INSTANCE_STATE = 1024, PROPERTY_USAGE_DEFAULT = PROPERTY_USAGE_STORAGE or
        #PROPERTY_USAGE_EDITOR or PROPERTY_USAGE_NETWORK, PROPERTY_USAGE_DEFAULT_INTL = PROPERTY_USAGE_STORAGE or
        #PROPERTY_USAGE_EDITOR or PROPERTY_USAGE_NETWORK or
        #PROPERTY_USAGE_INTERNATIONALIZED, 
    #PROPERTY_USAGE_NOEDITOR = PROPERTY_USAGE_STORAGE or PROPERTY_USAGE_NETWORK


#template ADD_SIGNAL*(m_signal: expr): expr = 
  #add_signal(get_type_static(), m_signal)

#template ADD_PROPERTY*(m_property, m_setter, m_getter: expr): expr = 
  #add_property(get_type_static(), m_property, m_setter, m_getter)

#template ADD_PROPERTYI*(m_property, m_setter, m_getter, m_index: expr): expr = 
  #add_property(get_type_static(), m_property, m_setter, m_getter, m_index)

#template ADD_PROPERTYNZ*(m_property, m_setter, m_getter: expr): expr = 
  #add_property(get_type_static(), 
               #(m_property).added_usage(PROPERTY_USAGE_STORE_IF_NONZERO), 
               #m_setter, m_getter)

#template ADD_PROPERTYINZ*(m_property, m_setter, m_getter, m_index: expr): expr = 
  #add_property(get_type_static(), 
               #(m_property).added_usage(PROPERTY_USAGE_STORE_IF_NONZERO), 
               #m_setter, m_getter, m_index)

#type 
  #PropertyInfo* {.importcpp: "PropertyInfo", header: "object.h".} = object 
    #`type`* {.importc: "type".}: Type
    #name* {.importc: "name".}: String
    #hint* {.importc: "hint".}: PropertyHint
    #hint_string* {.importc: "hint_string".}: String
    #usage* {.importc: "usage".}: uint32_t


#proc added_usage*(this: PropertyInfo; p_fl: cint): PropertyInfo {.noSideEffect, 
    #importcpp: "added_usage", header: "object.h".}
#proc constructPropertyInfo*(): PropertyInfo {.constructor, 
    #importcpp: "PropertyInfo(@)", header: "object.h".}
#proc constructPropertyInfo*(p_type: Type; p_name: String; 
                            #p_hint: PropertyHint = PROPERTY_HINT_NONE; 
                            #p_hint_string: String = ""; 
                            #p_usage: uint32_t = PROPERTY_USAGE_DEFAULT): PropertyInfo {.
    #constructor, importcpp: "PropertyInfo(@)", header: "object.h".}
#proc `<`*(this: PropertyInfo; p_info: PropertyInfo): bool {.noSideEffect, 
    #importcpp: "(# < #)", header: "object.h".}
#proc convert_property_list*(p_list: ptr List[PropertyInfo]): Array {.
    #importcpp: "convert_property_list(@)", header: "object.h".}
#type 
  #MethodInfo* {.importcpp: "MethodInfo", header: "object.h".} = object 
    #name* {.importc: "name".}: String
    #arguments* {.importc: "arguments".}: List[PropertyInfo]
    #default_arguments* {.importc: "default_arguments".}: Vector[Variant]
    #return_val* {.importc: "return_val".}: PropertyInfo
    #flags* {.importc: "flags".}: uint32_t
    #id* {.importc: "id".}: cint


#proc `<`*(this: MethodInfo; p_method: MethodInfo): bool {.inline, noSideEffect, 
    #importcpp: "(# < #)", header: "object.h".}
#proc constructMethodInfo*(): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(p_name: String): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(p_name: String; p_param1: PropertyInfo): MethodInfo {.
    #constructor, importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo; p_param3: PropertyInfo): MethodInfo {.
    #constructor, importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo; p_param3: PropertyInfo; 
                          #p_param4: PropertyInfo): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo; p_param3: PropertyInfo; 
                          #p_param4: PropertyInfo; p_param5: PropertyInfo): MethodInfo {.
    #constructor, importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type; p_name: String): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type; p_name: String; p_param1: PropertyInfo): MethodInfo {.
    #constructor, importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type; p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type; p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo; p_param3: PropertyInfo): MethodInfo {.
    #constructor, importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type; p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo; p_param3: PropertyInfo; 
                          #p_param4: PropertyInfo): MethodInfo {.constructor, 
    #importcpp: "MethodInfo(@)", header: "object.h".}
#proc constructMethodInfo*(ret: Type; p_name: String; p_param1: PropertyInfo; 
                          #p_param2: PropertyInfo; p_param3: PropertyInfo; 
                          #p_param4: PropertyInfo; p_param5: PropertyInfo): MethodInfo {.
    #constructor, importcpp: "MethodInfo(@)", header: "object.h".}
## old cast_to
##if ( is_type(T::get_type_static()) )
##return static_cast<T*>(this);
##//else
##return NULL;
##
##   the following is an uncomprehensible blob of hacks and workarounds to compensate for many of the fallencies in C++. As a plus, this macro pretty much alone defines the object model. 
##

discard "forward decl of ScriptInstance"
type 
  Object* {.importcpp: "Object", header: "object.h".} = object #should be protected, but bug in clang++
                                                                          # SceneTree::queue_delete()

