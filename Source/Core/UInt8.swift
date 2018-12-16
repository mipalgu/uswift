
@_fixed_layout
public struct UInt8 {
  @usableFromInline
  internal var _value: Builtin.Int8
}

extension UInt8 : _ExpressibleByBuiltinIntegerLiteral {
  @_transparent
  public init(_builtinIntegerLiteral value: Builtin.IntLiteral) {
    _value = Builtin.s_to_u_checked_trunc_IntLiteral_Int8(value).0
  }
}

extension UInt8 : ExpressibleByIntegerLiteral {
}
