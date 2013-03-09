class FancyboxRailsGenerator < Rails::Generators::Base
  source_root File.expand_path("../../../vendor/assets", __FILE__)

  desc "Copy FancyBox into lib/ for customization"
  def copy_assets
    dir = Pathname.new(self.class.source_root)
    Dir[self.class.source_root + '/**/*'].each do |entry|
      next if File.directory?(entry)
      file = Pathname.new(entry).relative_path_from(dir)
      copy_file file, "lib/assets/#{file}"
    end
  end
end
