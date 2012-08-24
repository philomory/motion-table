module MotionTable
  class Console
    NAME = "MotionTable::Console"
    DEFAULT_COLOR = [ '', '' ]
    RED_COLOR = [ "\e[0;31m", "\e[0m" ] # Must be in double quotes

    class << self
      def log(obj, actionNotImplemented:action)
        log " actionNotImplemented -- the action :#{action} is not implemented in #{obj.class.to_s}", withColor: RED_COLOR
      end

      def log(log, withColor:color)
        puts color[0] + NAME + log + color[1]
      end

      def log(log)
        log(log, withColor: DEFAULT_COLOR)
      end
    end
  end
end