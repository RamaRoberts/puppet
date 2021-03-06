module Puppet::Parser::Functions

  newfunction(
  :sprintf, :type => :rvalue,

    :doc => "Perform printf-style formatting of text.

      The first parameter is format string describing how the rest of the parameters should be formatted.  See the documentation for the ``Kernel::sprintf`` function in Ruby for all the details.") do |args|
    raise Puppet::ParseError, 'sprintf() needs at least one argument' if args.length < 1
    fmt = args.shift
    return sprintf(fmt, *args)
  end
end
