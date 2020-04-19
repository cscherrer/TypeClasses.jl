"""
defining state monad, which capsulate a state within a monadic type
"""
struct State{T}
  func::T # s -> (a, s)
end
function (s::State)(state)
  s.func(state)
end

Get = State() do state
  state, state
end

Put(x) = State() do state
  (), x
end
