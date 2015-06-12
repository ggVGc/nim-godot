type 
  CharString* {.importcpp: "CharString", header: "ustring.h".} = object
  

proc length*(this: CharString): cint {.noSideEffect, importcpp: "length", 
                                       header: "ustring.h".}
proc get_data*(this: CharString): cstring {.noSideEffect, importcpp: "get_data", 
    header: "ustring.h".}
type 
  CharType* = char
  int64_t* = int
  uint64_t* = int
  uint_8t* = int
  uint_32t* = int
type 
  StrRange* {.importcpp: "StrRange", header: "ustring.h".} = object 
    c_str* {.importc: "c_str".}: ptr CharType
    len* {.importc: "len".}: cint


proc constructStrRange*(p_c_str: ptr CharType = nil; p_len: cint = 0): StrRange {.
    constructor, importcpp: "StrRange(@)", header: "ustring.h".}
type 
  String* {.importcpp: "String", header: "ustring.h".} = object
  

const 
  npos* = - 1

proc `==`*(this: String; p_str: String): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "ustring.h".}
proc `+`*(this: String; p_str: String): String {.noSideEffect, 
    importcpp: "(# + #)", header: "ustring.h".}
proc `+=`*(this: var String; a3: String) {.importcpp: "(# += #)", 
    header: "ustring.h".}
proc `+=`*(this: var String; p_str: CharType) {.importcpp: "(# += #)", 
    header: "ustring.h".}
proc `+=`*(this: var String; p_str: cstring) {.importcpp: "(# += #)", 
    header: "ustring.h".}
proc `+=`*(this: var String; p_str: ptr CharType) {.importcpp: "(# += #)", 
    header: "ustring.h".}
proc `==`*(this: String; p_str: cstring): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "ustring.h".}
proc `==`*(this: String; p_str: ptr CharType): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "ustring.h".}
proc `==`*(this: String; p_str_range: StrRange): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "ustring.h".}
proc `<`*(this: String; p_str: ptr CharType): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "ustring.h".}
proc `<`*(this: String; p_str: cstring): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "ustring.h".}
proc `<`*(this: String; p_str: String): bool {.noSideEffect, 
    importcpp: "(# < #)", header: "ustring.h".}
proc `<=`*(this: String; p_str: String): bool {.noSideEffect, 
    importcpp: "(# <= #)", header: "ustring.h".}
proc casecmp_to*(this: String; p_str: String): cchar {.noSideEffect, 
    importcpp: "casecmp_to", header: "ustring.h".}
proc nocasecmp_to*(this: String; p_str: String): cchar {.noSideEffect, 
    importcpp: "nocasecmp_to", header: "ustring.h".}
proc c_str*(this: String): ptr CharType {.noSideEffect, importcpp: "c_str", 
    header: "ustring.h".}
proc length*(this: String): cint {.noSideEffect, importcpp: "length", 
                                   header: "ustring.h".}
proc substr*(this: String; p_from: cint; p_chars: cint): String {.noSideEffect, 
    importcpp: "substr", header: "ustring.h".}
proc find*(this: String; p_str: String; p_from: cint = 0): cint {.noSideEffect, 
    importcpp: "find", header: "ustring.h".}
proc find_last*(this: String; p_str: String): cint {.noSideEffect, 
    importcpp: "find_last", header: "ustring.h".}
proc findn*(this: String; p_str: String; p_from: cint = 0): cint {.noSideEffect, 
    importcpp: "findn", header: "ustring.h".}
proc rfind*(this: String; p_str: String; p_from: cint = - 1): cint {.
    noSideEffect, importcpp: "rfind", header: "ustring.h".}
proc rfindn*(this: String; p_str: String; p_from: cint = - 1): cint {.
    noSideEffect, importcpp: "rfindn", header: "ustring.h".}
proc match*(this: String; p_wildcard: String): bool {.noSideEffect, 
    importcpp: "match", header: "ustring.h".}
proc matchn*(this: String; p_wildcard: String): bool {.noSideEffect, 
    importcpp: "matchn", header: "ustring.h".}
proc begins_with*(this: String; p_string: String): bool {.noSideEffect, 
    importcpp: "begins_with", header: "ustring.h".}
proc begins_with*(this: String; p_string: cstring): bool {.noSideEffect, 
    importcpp: "begins_with", header: "ustring.h".}
proc ends_with*(this: String; p_string: String): bool {.noSideEffect, 
    importcpp: "ends_with", header: "ustring.h".}
proc replace_first*(this: String; p_key: String; p_with: String): String {.
    noSideEffect, importcpp: "replace_first", header: "ustring.h".}
proc replace*(this: String; p_key: String; p_with: String): String {.
    noSideEffect, importcpp: "replace", header: "ustring.h".}
proc replacen*(this: String; p_key: String; p_with: String): String {.
    noSideEffect, importcpp: "replacen", header: "ustring.h".}
proc insert*(this: String; p_at_pos: cint; p_string: String): String {.
    noSideEffect, importcpp: "insert", header: "ustring.h".}
proc pad_decimals*(this: String; p_digits: cint): String {.noSideEffect, 
    importcpp: "pad_decimals", header: "ustring.h".}
proc pad_zeros*(this: String; p_digits: cint): String {.noSideEffect, 
    importcpp: "pad_zeros", header: "ustring.h".}
proc lpad*(this: String; min_length: cint; character: String): String {.
    noSideEffect, importcpp: "lpad", header: "ustring.h".}
proc rpad*(this: String; min_length: cint; character: String): String {.
    noSideEffect, importcpp: "rpad", header: "ustring.h".}
#proc sprintf*(this: String; values: Array; error: ptr bool): String {.
    #noSideEffect, importcpp: "sprintf", header: "ustring.h".}
proc num*(p_num: cdouble; p_decimals: cint = - 1): String {.
    importcpp: "String::num(@)", header: "ustring.h".}
proc num_scientific*(p_num: cdouble): String {.
    importcpp: "String::num_scientific(@)", header: "ustring.h".}
proc num_real*(p_num: cdouble): String {.importcpp: "String::num_real(@)", 
    header: "ustring.h".}
proc num_int64*(p_num: int64_t; base: cint = 10; capitalize_hex: bool = false): String {.
    importcpp: "String::num_int64(@)", header: "ustring.h".}
proc chr*(p_char: CharType): String {.importcpp: "String::chr(@)", 
                                      header: "ustring.h".}
proc md5*(p_md5: ptr uint8_t): String {.importcpp: "String::md5(@)", 
                                        header: "ustring.h".}
proc is_numeric*(this: String): bool {.noSideEffect, importcpp: "is_numeric", 
                                       header: "ustring.h".}
proc to_double*(this: String): cdouble {.noSideEffect, importcpp: "to_double", 
    header: "ustring.h".}
proc to_float*(this: String): cfloat {.noSideEffect, importcpp: "to_float", 
                                       header: "ustring.h".}
proc hex_to_int*(this: String): cint {.noSideEffect, importcpp: "hex_to_int", 
                                       header: "ustring.h".}
proc to_int*(this: String): cint {.noSideEffect, importcpp: "to_int", 
                                   header: "ustring.h".}
proc to_int64*(this: String): int64_t {.noSideEffect, importcpp: "to_int64", 
                                        header: "ustring.h".}
proc to_int*(p_str: cstring): cint {.importcpp: "String::to_int(@)", 
                                     header: "ustring.h".}
proc to_double*(p_str: cstring): cdouble {.importcpp: "String::to_double(@)", 
    header: "ustring.h".}
proc to_double*(p_str: ptr CharType; r_end: ptr ptr CharType = nil): cdouble {.
    importcpp: "String::to_double(@)", header: "ustring.h".}
proc to_int*(p_str: ptr CharType; p_len: cint = - 1): int64_t {.
    importcpp: "String::to_int(@)", header: "ustring.h".}
proc capitalize*(this: String): String {.noSideEffect, importcpp: "capitalize", 
    header: "ustring.h".}
proc camelcase_to_underscore*(this: String): String {.noSideEffect, 
    importcpp: "camelcase_to_underscore", header: "ustring.h".}
proc get_slice_count*(this: String; p_splitter: String): cint {.noSideEffect, 
    importcpp: "get_slice_count", header: "ustring.h".}
proc get_slice*(this: String; p_splitter: String; p_slice: cint): String {.
    noSideEffect, importcpp: "get_slice", header: "ustring.h".}
#proc split*(this: String; p_splitter: String; p_allow_empty: bool = true): Vector[
    #String] {.noSideEffect, importcpp: "split", header: "ustring.h".}
#proc split_spaces*(this: String): Vector[String] {.noSideEffect, 
    #importcpp: "split_spaces", header: "ustring.h".}
#proc split_floats*(this: String; p_splitter: String; p_allow_empty: bool = true): Vector[
    #cfloat] {.noSideEffect, importcpp: "split_floats", header: "ustring.h".}
#proc split_floats_mk*(this: String; p_splitters: Vector[String]; 
                      #p_allow_empty: bool = true): Vector[cfloat] {.
    #noSideEffect, importcpp: "split_floats_mk", header: "ustring.h".}
#proc split_ints*(this: String; p_splitter: String; p_allow_empty: bool = true): Vector[
    #cint] {.noSideEffect, importcpp: "split_ints", header: "ustring.h".}
#proc split_ints_mk*(this: String; p_splitters: Vector[String]; 
                    #p_allow_empty: bool = true): Vector[cint] {.noSideEffect, 
    #importcpp: "split_ints_mk", header: "ustring.h".}
proc char_uppercase*(p_char: CharType): CharType {.
    importcpp: "String::char_uppercase(@)", header: "ustring.h".}
proc char_lowercase*(p_char: CharType): CharType {.
    importcpp: "String::char_lowercase(@)", header: "ustring.h".}
proc to_upper*(this: String): String {.noSideEffect, importcpp: "to_upper", 
                                       header: "ustring.h".}
proc to_lower*(this: String): String {.noSideEffect, importcpp: "to_lower", 
                                       header: "ustring.h".}
proc left*(this: String; p_pos: cint): String {.noSideEffect, importcpp: "left", 
    header: "ustring.h".}
proc right*(this: String; p_pos: cint): String {.noSideEffect, 
    importcpp: "right", header: "ustring.h".}
proc strip_edges*(this: String): String {.noSideEffect, 
    importcpp: "strip_edges", header: "ustring.h".}
proc strip_escapes*(this: String): String {.noSideEffect, 
    importcpp: "strip_escapes", header: "ustring.h".}
proc extension*(this: String): String {.noSideEffect, importcpp: "extension", 
                                        header: "ustring.h".}
proc basename*(this: String): String {.noSideEffect, importcpp: "basename", 
                                       header: "ustring.h".}
proc plus_file*(this: String; p_file: String): String {.noSideEffect, 
    importcpp: "plus_file", header: "ustring.h".}
proc ord_at*(this: String; p_idx: cint): CharType {.noSideEffect, 
    importcpp: "ord_at", header: "ustring.h".}
proc erase*(this: var String; p_pos: cint; p_chars: cint) {.importcpp: "erase", 
    header: "ustring.h".}
proc ascii*(this: String; p_allow_extended: bool = false): CharString {.
    noSideEffect, importcpp: "ascii", header: "ustring.h".}
proc utf8*(this: String): CharString {.noSideEffect, importcpp: "utf8", 
                                       header: "ustring.h".}
proc parse_utf8*(this: var String; p_utf8: cstring; p_len: cint = - 1): bool {.
    importcpp: "parse_utf8", header: "ustring.h".}
proc utf8*(p_utf8: cstring; p_len: cint = - 1): String {.
    importcpp: "String::utf8(@)", header: "ustring.h".}
proc hash*(p_str: ptr CharType; p_len: cint): uint32_t {.
    importcpp: "String::hash(@)", header: "ustring.h".}
proc hash*(p_str: ptr CharType): uint32_t {.importcpp: "String::hash(@)", 
    header: "ustring.h".}
proc hash*(p_cstr: cstring; p_len: cint): uint32_t {.
    importcpp: "String::hash(@)", header: "ustring.h".}
proc hash*(p_cstr: cstring): uint32_t {.importcpp: "String::hash(@)", 
                                        header: "ustring.h".}
proc hash*(this: String): uint32_t {.noSideEffect, importcpp: "hash", 
                                     header: "ustring.h".}
proc hash64*(this: String): uint64_t {.noSideEffect, importcpp: "hash64", 
                                       header: "ustring.h".}
proc md5_text*(this: String): String {.noSideEffect, importcpp: "md5_text", 
                                       header: "ustring.h".}
#proc md5_buffer*(this: String): Vector[uint8_t] {.noSideEffect, 
    #importcpp: "md5_buffer", header: "ustring.h".}
proc empty*(this: String): bool {.inline, noSideEffect, importcpp: "empty", 
                                  header: "ustring.h".}
proc is_abs_path*(this: String): bool {.noSideEffect, importcpp: "is_abs_path", 
                                        header: "ustring.h".}
proc is_rel_path*(this: String): bool {.noSideEffect, importcpp: "is_rel_path", 
                                        header: "ustring.h".}
proc is_resource_file*(this: String): bool {.noSideEffect, 
    importcpp: "is_resource_file", header: "ustring.h".}
proc path_to*(this: String; p_path: String): String {.noSideEffect, 
    importcpp: "path_to", header: "ustring.h".}
proc path_to_file*(this: String; p_path: String): String {.noSideEffect, 
    importcpp: "path_to_file", header: "ustring.h".}
proc get_base_dir*(this: String): String {.noSideEffect, 
    importcpp: "get_base_dir", header: "ustring.h".}
proc get_file*(this: String): String {.noSideEffect, importcpp: "get_file", 
                                       header: "ustring.h".}
proc humanize_size*(p_size: csize): String {.
    importcpp: "String::humanize_size(@)", header: "ustring.h".}
proc simplify_path*(this: String): String {.noSideEffect, 
    importcpp: "simplify_path", header: "ustring.h".}
proc xml_escape*(this: String; p_escape_quotes: bool = false): String {.
    noSideEffect, importcpp: "xml_escape", header: "ustring.h".}
proc xml_unescape*(this: String): String {.noSideEffect, 
    importcpp: "xml_unescape", header: "ustring.h".}
proc c_escape*(this: String): String {.noSideEffect, importcpp: "c_escape", 
                                       header: "ustring.h".}
proc c_unescape*(this: String): String {.noSideEffect, importcpp: "c_unescape", 
    header: "ustring.h".}
proc percent_encode*(this: String): String {.noSideEffect, 
    importcpp: "percent_encode", header: "ustring.h".}
proc percent_decode*(this: String): String {.noSideEffect, 
    importcpp: "percent_decode", header: "ustring.h".}
proc is_valid_identifier*(this: String): bool {.noSideEffect, 
    importcpp: "is_valid_identifier", header: "ustring.h".}
proc is_valid_integer*(this: String): bool {.noSideEffect, 
    importcpp: "is_valid_integer", header: "ustring.h".}
proc is_valid_float*(this: String): bool {.noSideEffect, 
    importcpp: "is_valid_float", header: "ustring.h".}
proc is_valid_html_color*(this: String): bool {.noSideEffect, 
    importcpp: "is_valid_html_color", header: "ustring.h".}
proc is_valid_ip_address*(this: String): bool {.noSideEffect, 
    importcpp: "is_valid_ip_address", header: "ustring.h".}
proc constructString*(): String {.inline, constructor, importcpp: "String(@)", 
                                  header: "ustring.h".}
proc constructString*(p_str: cstring): String {.constructor, 
    importcpp: "String(@)", header: "ustring.h".}
proc constructString*(p_str: ptr CharType; p_clip_to_len: cint = - 1): String {.
    constructor, importcpp: "String(@)", header: "ustring.h".}
proc constructString*(p_range: StrRange): String {.constructor, 
    importcpp: "String(@)", header: "ustring.h".}
proc itos*(p_val: int64_t): String {.importcpp: "itos(@)", header: "ustring.h".}
proc rtos*(p_val: cdouble): String {.importcpp: "rtos(@)", header: "ustring.h".}
proc rtoss*(p_val: cdouble): String {.importcpp: "rtoss(@)", header: "ustring.h".}
#scientific version

type 
  NoCaseComparator* {.importcpp: "NoCaseComparator", header: "ustring.h".} = object 
  

proc `()`*(this: NoCaseComparator; p_a: String; p_b: String): bool {.
    noSideEffect, importcpp: "#(@)", header: "ustring.h".}

