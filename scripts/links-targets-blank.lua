-- Add target="_blank" attributes to all links in a Pandoc document

local function add_target_blank (link)
    if string.match(link.target, "^http") and ( not string.match(link.target, "blog.angelfish.be") ) then
        link.attributes.target = '_blank'
    end
    return link
end

return {
    { Link = add_target_blank }
}
