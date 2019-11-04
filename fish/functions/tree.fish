function tree
	bass "find . -not -path '*/\.*' -print | sed -e 's;[^/]*/;|;g;s;|; |;g'"
end
