export NumericRoot

export System

# Numerical computations are only supported
# for number types that are subtype of this
# NumericRoot in Mocha
typealias NumericRoot FloatingPoint

type System{T <: Backend}
  backend :: T

  regularization_coef :: NumericRoot
  learning_rate :: NumericRoot
  momentum :: NumericRoot
  max_iter :: Int
end

function init(sys::System)
  init(sys.backend)
end
function shutdown(sys::System)
  shutdown(sys.backend)
end
