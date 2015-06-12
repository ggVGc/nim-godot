type 
  Node* {.importcpp: "Node", header: "node.h".} = object
  

type 
  PauseMode* = enum 
    PAUSE_MODE_INHERIT, PAUSE_MODE_STOP, PAUSE_MODE_PROCESS
type 
  Comparator* {.importcpp: "Comparator", header: "node.h".} = object 
  
proc `()`*(this: Comparator; p_a: ptr Node; p_b: ptr Node): bool {.
    noSideEffect, importcpp: "#(@)", header: "node.h".}
const                         # you can make your own, but don't use the same numbers as other notifications in other nodes
  NOTIFICATION_ENTER_TREE* = 10
  NOTIFICATION_EXIT_TREE* = 11
  NOTIFICATION_MOVED_IN_PARENT* = 12
  NOTIFICATION_READY* = 13    #NOTIFICATION_PARENT_DECONFIGURED =15, - it's confusing, it's going away
  NOTIFICATION_PAUSED* = 14
  NOTIFICATION_UNPAUSED* = 15
  NOTIFICATION_FIXED_PROCESS* = 16
  NOTIFICATION_PROCESS* = 17
  NOTIFICATION_PARENTED* = 18
  NOTIFICATION_UNPARENTED* = 19
  NOTIFICATION_INSTANCED* = 20

#proc get_name*(this: Node): StringName {.noSideEffect, importcpp: "get_name", 
    #header: "node.h".}
#proc set_name*(this: var Node; p_name: String) {.importcpp: "set_name", 
    #header: "node.h".}
proc add_child*(this: var Node; p_child: ptr Node) {.importcpp: "add_child", 
    header: "node.h".}
proc remove_child*(this: var Node; p_child: ptr Node) {.
    importcpp: "remove_child", header: "node.h".}
proc get_child_count*(this: Node): cint {.noSideEffect, 
    importcpp: "get_child_count", header: "node.h".}
proc get_child*(this: Node; p_index: cint): ptr Node {.noSideEffect, 
    importcpp: "get_child", header: "node.h".}
#proc has_node*(this: Node; p_path: NodePath): bool {.noSideEffect, 
    #importcpp: "has_node", header: "node.h".}
#proc get_node*(this: Node; p_path: NodePath): ptr Node {.noSideEffect, 
    #importcpp: "get_node", header: "node.h".}
#proc has_node_and_resource*(this: Node; p_path: NodePath): bool {.noSideEffect, 
    #importcpp: "has_node_and_resource", header: "node.h".}
#proc get_node_and_resource*(this: Node; p_path: NodePath; r_res: var RES): ptr Node {.
    #noSideEffect, importcpp: "get_node_and_resource", header: "node.h".}
proc get_parent*(this: Node): ptr Node {.noSideEffect, importcpp: "get_parent", 
    header: "node.h".}
#proc get_tree*(this: Node): ptr SceneTree {.noSideEffect, importcpp: "get_tree", 
    #header: "node.h".}
proc is_inside_tree*(this: Node): bool {.noSideEffect, 
    importcpp: "is_inside_tree", header: "node.h".}
proc is_a_parent_of*(this: Node; p_node: ptr Node): bool {.noSideEffect, 
    importcpp: "is_a_parent_of", header: "node.h".}
proc is_greater_than*(this: Node; p_node: ptr Node): bool {.noSideEffect, 
    importcpp: "is_greater_than", header: "node.h".}
#proc get_path*(this: Node): NodePath {.noSideEffect, importcpp: "get_path", 
                                       #header: "node.h".}
#proc get_path_to*(this: Node; p_node: ptr Node): NodePath {.noSideEffect, 
    #importcpp: "get_path_to", header: "node.h".}
#proc add_to_group*(this: var Node; p_identifier: StringName; 
                   #p_persistent: bool = false) {.importcpp: "add_to_group", 
    #header: "node.h".}
#proc remove_from_group*(this: var Node; p_identifier: StringName) {.
    #importcpp: "remove_from_group", header: "node.h".}
#proc is_in_group*(this: Node; p_identifier: StringName): bool {.noSideEffect, 
    #importcpp: "is_in_group", header: "node.h".}
type 
  GroupInfo* {.importcpp: "GroupInfo", header: "node.h".} = object 
    #name* {.importc: "name".}: String
    persistent* {.importc: "persistent".}: bool

#proc get_groups*(this: Node; p_groups: ptr List[GroupInfo]) {.noSideEffect, 
    #importcpp: "get_groups", header: "node.h".}
proc move_child*(this: var Node; p_child: ptr Node; p_pos: cint) {.
    importcpp: "move_child", header: "node.h".}
proc `raise`*(this: var Node) {.importcpp: "raise", header: "node.h".}
proc set_owner*(this: var Node; p_owner: ptr Node) {.importcpp: "set_owner", 
    header: "node.h".}
proc get_owner*(this: Node): ptr Node {.noSideEffect, importcpp: "get_owner", 
                                        header: "node.h".}
#proc get_owned_by*(this: var Node; p_by: ptr Node; p_owned: ptr List[ptr Node]) {.
    #importcpp: "get_owned_by", header: "node.h".}
proc remove_and_skip*(this: var Node) {.importcpp: "remove_and_skip", 
                                        header: "node.h".}
proc get_index*(this: Node): cint {.noSideEffect, importcpp: "get_index", 
                                    header: "node.h".}
proc print_tree*(this: var Node) {.importcpp: "print_tree", header: "node.h".}
#proc set_filename*(this: var Node; p_filename: String) {.
    #importcpp: "set_filename", header: "node.h".}
#proc get_filename*(this: Node): String {.noSideEffect, 
    #importcpp: "get_filename", header: "node.h".}
proc propagate_notification*(this: var Node; p_notification: cint) {.
    importcpp: "propagate_notification", header: "node.h".}
proc set_fixed_process*(this: var Node; p_process: bool) {.
    importcpp: "set_fixed_process", header: "node.h".}
proc get_fixed_process_delta_time*(this: Node): cfloat {.noSideEffect, 
    importcpp: "get_fixed_process_delta_time", header: "node.h".}
proc is_fixed_processing*(this: Node): bool {.noSideEffect, 
    importcpp: "is_fixed_processing", header: "node.h".}
proc set_process*(this: var Node; p_process: bool) {.importcpp: "set_process", 
    header: "node.h".}
proc get_process_delta_time*(this: Node): cfloat {.noSideEffect, 
    importcpp: "get_process_delta_time", header: "node.h".}
proc is_processing*(this: Node): bool {.noSideEffect, 
                                        importcpp: "is_processing", 
                                        header: "node.h".}
proc set_process_input*(this: var Node; p_enable: bool) {.
    importcpp: "set_process_input", header: "node.h".}
proc is_processing_input*(this: Node): bool {.noSideEffect, 
    importcpp: "is_processing_input", header: "node.h".}
proc set_process_unhandled_input*(this: var Node; p_enable: bool) {.
    importcpp: "set_process_unhandled_input", header: "node.h".}
proc is_processing_unhandled_input*(this: Node): bool {.noSideEffect, 
    importcpp: "is_processing_unhandled_input", header: "node.h".}
proc set_process_unhandled_key_input*(this: var Node; p_enable: bool) {.
    importcpp: "set_process_unhandled_key_input", header: "node.h".}
proc is_processing_unhandled_key_input*(this: Node): bool {.noSideEffect, 
    importcpp: "is_processing_unhandled_key_input", header: "node.h".}
proc get_position_in_parent*(this: Node): cint {.noSideEffect, 
    importcpp: "get_position_in_parent", header: "node.h".}
proc duplicate*(this: Node): ptr Node {.noSideEffect, importcpp: "duplicate", 
                                        header: "node.h".}
#proc duplicate_and_reown*(this: Node; p_reown_map: Map[ptr Node, ptr Node]): ptr Node {.
    #noSideEffect, importcpp: "duplicate_and_reown", header: "node.h".}
proc generate_instance_state*(this: var Node) {.
    importcpp: "generate_instance_state", header: "node.h".}
#proc get_instance_state*(this: Node): Dictionary {.noSideEffect, 
    #importcpp: "get_instance_state", header: "node.h".}
#proc get_instance_groups*(this: Node): Vector[StringName] {.noSideEffect, 
    #importcpp: "get_instance_groups", header: "node.h".}
#proc get_instance_connections*(this: Node): Vector[Connection] {.noSideEffect, 
    #importcpp: "get_instance_connections", header: "node.h".}
#proc make_binds*(a2: VARIANT_ARG_LIST): Vector[Variant] {.
    #importcpp: "Node::make_binds(@)", header: "node.h".}
proc replace_by*(this: var Node; p_node: ptr Node; p_keep_data: bool = false) {.
    importcpp: "replace_by", header: "node.h".}
proc set_pause_mode*(this: var Node; p_mode: PauseMode) {.
    importcpp: "set_pause_mode", header: "node.h".}
proc get_pause_mode*(this: Node): PauseMode {.noSideEffect, 
    importcpp: "get_pause_mode", header: "node.h".}
proc can_process*(this: Node): bool {.noSideEffect, importcpp: "can_process", 
                                      header: "node.h".}
proc print_stray_nodes*() {.importcpp: "Node::print_stray_nodes(@)", 
                            header: "node.h".}
proc queue_delete*(this: var Node) {.importcpp: "queue_delete", header: "node.h".}
proc set_human_readable_collision_renaming*(p_enabled: bool) {.
    importcpp: "Node::set_human_readable_collision_renaming(@)", 
    header: "node.h".}
proc init_node_hrcr*() {.importcpp: "Node::init_node_hrcr(@)", header: "node.h".}
proc force_parent_owned*(this: var Node) {.importcpp: "force_parent_owned", 
    header: "node.h".}
#proc get_argument_options*(this: Node; p_function: StringName; p_idx: cint; 
                           #r_options: ptr List[String]) {.noSideEffect, 
    #importcpp: "get_argument_options", header: "node.h".}
#proc get_viewport*(this: Node): ptr Viewport {.noSideEffect, 
    #importcpp: "get_viewport", header: "node.h".}
proc constructNode*(): Node {.constructor, importcpp: "Node(@)", 
                              header: "node.h".}
proc destroyNode*(this: var Node) {.importcpp: "#.~Node()", header: "node.h".}
#type 
  #NodeSet* = Set[ptr Node, Comparator]


