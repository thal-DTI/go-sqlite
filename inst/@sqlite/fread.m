function output=fread(obj, string, value)
  switch nargin
    case {0,1}
      print_help
      return
    case 2
      [~,output]=system(sprintf('%s %s "%s"', obj.path, obj.file, string));
    case 3
      command=sqlite_parse_new_command(string, value);
      [~,output]=system(sprintf('%s %s "%s"', obj.path, obj.file, command));
    otherwise
      print_help
      return
    end
end
