class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    mp "Configuring MotionConcierge"
    MotionConcierge.local_file_name = 'dropzones.geojson'
    MotionConcierge.remote_file_url = "https://raw.githubusercontent.com/OTGApps/USPADropzones/master/dropzones.geojson"
    MotionConcierge.fetch_interval = 1200
    MotionConcierge.debug = true
    true
  end

  def applicationDidBecomeActive(application)
    # Check for new data is necessary
    mp "Using MotionConcierge to check for new data."
    MotionConcierge.fetch
  end
end
