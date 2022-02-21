function img --description 'display img in the CLI using w3m-img'
        w3m -F -o ext_image_viewer=0 $argv
end
