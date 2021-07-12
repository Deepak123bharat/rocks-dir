local record dir
    --- Describe a path in a cross-platform way.
    -- Use this function to avoid platform-specific directory
    -- separators in other modules. Removes trailing slashes from
    -- each component given, to avoid repeated separators.
    -- Separators inside strings are kept, to handle URLs containing
    -- protocols.
    -- @param ... strings representing directories
    -- @return string: a string with a platform-specific representation
    -- of the path.
    path: function(...: string): string

    --- Split protocol and path from an URL or local pathname.
    -- URLs should be in the "protocol://path" format.
    -- For local pathnames, "file" is returned as the protocol.
    -- @param url string: an URL or a local pathname.
    -- @return string, string: the protocol, and the pathname without the protocol.
    split_url: function(url: string): string, string

    --- Normalize a url or local path.
    -- URLs should be in the "protocol://path" format. System independent
    -- forward slashes are used, removing trailing and double slashes
    -- @param url string: an URL or a local pathname.
    -- @return string: Normalized result.
    normalize: function(name: string): string

    --- Strip the path off a path+filename.
    -- @param pathname string: A path+name, such as "/a/b/c"
    -- or "\a\b\c".
    -- @return string: The filename without its path, such as "c".
    base_name: function(pathname: string): string

    --- Strip the name off a path+filename.
    -- @param pathname string: A path+name, such as "/a/b/c".
    -- @return string: The filename without its path, such as "/a/b".
    -- For entries such as "/a/b/", "/a" is returned. If there are
    -- no directory separators in input, "" is returned.
    dir_name: function(pathname: string): string

    --- Returns true if protocol does not require additional tools.
    -- @param protocol The protocol name
    is_basic_protocol: function(protocol: string): boolean

    deduce_base_dir: function(url: string): string
end

return dir