class Friend

  def greeting(name="")
    if name.empty?
      gr = "Hello!".gsub(",","")
      gr.strip
    else
      "Hello, #{name}!"
    end
  end

end
