#n

# Replaces `# Changelog` with `# Release notes`.
s/^# Changelog$/# Release notes/

# If a line does not start with `### Other changes`, print.
/^### Other changes/!p

# If a line starts with `### Other changes`, iterate through every line
# without printing until a new section begins.
/^### Other changes/{h;:a;n;/^#/!{ba};p}
