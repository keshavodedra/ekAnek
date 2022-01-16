module MediaFilesHelper
  def file_size
    if file.byte_size < 1024
      "#{file.byte_size} Byte"
    elsif file.byte_size > 1024 && file.byte_size < (1024 * 1024)
      "#{(file.byte_size.to_f / 1024).round(2)} KB"
    else
      "#{(file.byte_size.to_f / (1024 * 1024)).round(2)} MB"
    end
  end
end
