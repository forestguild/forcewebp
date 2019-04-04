require 'mime/types'
require 'nokogiri'

module Jekyll
    module WebpFilter
        def forcewebp(input)
            doc = Nokogiri::HTML.fragment(input);
            doc.css('img').each do |img|
                picture = Nokogiri::XML::Node.new "picture", doc

                # Generate new <source srcset="img path" type="image/webp"/> and add it to <picture>
                picture_webp = Nokogiri::XML::Node.new "source", doc
                picture_webp['type'] = 'image/webp'
                picture_webp['srcset'] = img['src'][0...-3] + "webp"
                picture.add_child(picture_webp)

                # Generate new <source> with original image and add it to <picture>
                picture_orig = Nokogiri::XML::Node.new "source", doc
                picture_orig['type'] = MIME::Types.type_for(File.extname(img['src']).delete ?.)[0].to_s
                picture_orig['srcset'] = img['src']
                picture.add_child(picture_orig)

                # Copy and add <img> to <picture>
                picture_img = img.dup
                picture.add_child(picture_img)

                # Replace <img> with <picture><source/><img/></picture>
                img.replace picture
            end

            # Return the html as plaintext string
            doc.to_s
        end
    end
end

Liquid::Template.register_filter(Jekyll::WebpFilter)

