module ClassnamesHelper
  def classnames(*args)
    args.map do |arg|
      case arg
      when String
        arg
      when Hash
        arg.map do |k, v|
          k.to_s if v
        end
      end
    end.flatten.compact.join(" ")
  end
end
