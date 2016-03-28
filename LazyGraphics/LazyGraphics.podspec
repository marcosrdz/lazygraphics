Pod::Spec.new do |spec|
spec.platform = :ios, "9.0"
spec.name = "LazyGraphics"
spec.version = "0.0.1"
spec.summary = "Lazy Data is a high-level Core Graphics framework which will facilitate the use of Core Graphics for multiple tasks."
spec.homepage = "http://www.nsmarcos.com"
spec.authors = { "Marcos Rodriguez" => 'marcos@nsmarcos.com' }
spec.license = { type: 'MIT', file: 'LICENSE' }
spec.requires_arc = true
spec.source = { git: "https://github.com/marcosrdz/lazygraphics.git", tag: "v#{spec.version}", submodules: true }
spec.source_files = "LazyGraphics/**/*.{h,swift}"
spec.exclude_files = 'LazyGraphicsTests/**/*.{h,m,swift}'
end