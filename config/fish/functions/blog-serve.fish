#!/usr/bin/env fish

function blog-serve
    set current_dir (basename (pwd))
    
    # Directory-specific detection
    switch $current_dir
        case nosebook
            echo "🌸 Detected Jekyll blog (nosebook)"
            bundle exec jekyll serve --baseurl ''
            
        case L5-website
            echo "📚 Detected MkDocs site (L5-website)"
            mkdocs serve
            
        case compost.party
            echo "🎉 Detected Eleventy site (compost.party)"
            npm run dev
            
        case '*'
            # Fall back to file-based detection
            if test -f build.sh
                echo "📄 Detected Panblog site (has build.sh)"
                ./build.sh
                cd docs
                live-server
                
            else if test -f _config.yml
                echo "🌸 Detected Jekyll blog (_config.yml found)"
                bundle exec jekyll serve --baseurl ''
                
            else if test -f mkdocs.yml
                echo "📚 Detected MkDocs site (mkdocs.yml found)"
                mkdocs serve
                
            else if test -f .eleventy.js; or test -f eleventy.config.js
                echo "⚡ Detected Eleventy site"
                npm run dev
                
            else if test -f package.json; and grep -q '"@11ty/' package.json 2>/dev/null
                echo "⚡ Detected Eleventy site (package.json)"
                npm run dev
                
            else if test -f index.html
                echo "🌐 Detected static site (index.html found)"
                live-server
                
            else
                echo "❌ Could not detect blog type in current directory: $current_dir"
                echo "Supported types:"
                echo "  - Jekyll (nosebook directory or _config.yml)"
                echo "  - MkDocs (L5-website directory or mkdocs.yml)" 
                echo "  - Panblog (build.sh file)"
                echo "  - Eleventy (compost.party directory or .eleventy.js/eleventy.config.js)"
                echo "  - Static site (index.html file)"
                return 1
            end
    end
end

# Run the function
blog-serve
