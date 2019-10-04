package com.google.android.gms.internal;

public final class bf {

    /* renamed from: a  reason: collision with root package name */
    private static bg<Boolean> f3084a = bg.a("analytics.service_enabled", false, false);

    /* renamed from: b  reason: collision with root package name */
    private static bg<Long> f3085b = bg.a("analytics.max_tokens", 60, 60);
    private static bg<Float> c;
    private static bg<Integer> d = bg.a("analytics.max_stored_hits_per_app", 2000, 2000);
    private static bg<Long> e = bg.a("analytics.min_local_dispatch_millis", 120000, 120000);
    private static bg<Long> f = bg.a("analytics.max_local_dispatch_millis", 7200000, 7200000);
    private static bg<Integer> g = bg.a("analytics.max_hits_per_request.k", 20, 20);
    private static bg<Long> h = bg.a("analytics.service_monitor_interval", 86400000, 86400000);
    private static bg<String> i = bg.a("analytics.first_party_experiment_id", "", "");
    private static bg<Integer> j = bg.a("analytics.first_party_experiment_variant", 0, 0);
    private static bg<Long> k = bg.a("analytics.service_client.second_connect_delay_millis", 5000, 5000);
    private static bg<Long> l = bg.a("analytics.service_client.unexpected_reconnect_millis", 60000, 60000);
    public static bg<Boolean> zzdvx = bg.a("analytics.service_client_enabled", true, true);
    public static bg<String> zzdvy = bg.a("analytics.log_tag", "GAv4", "GAv4-SVC");
    public static bg<Integer> zzdwb = bg.a("analytics.max_stored_hits", 2000, 20000);
    public static bg<Integer> zzdwd = bg.a("analytics.max_stored_properties_per_app", 100, 100);
    public static bg<Long> zzdwe = bg.a("analytics.local_dispatch_millis", 1800000, 120000);
    public static bg<Long> zzdwf = bg.a("analytics.initial_local_dispatch_millis", 5000, 5000);
    public static bg<Long> zzdwi = bg.a("analytics.dispatch_alarm_millis", 7200000, 7200000);
    public static bg<Long> zzdwj = bg.a("analytics.max_dispatch_alarm_millis", 32400000, 32400000);
    public static bg<Integer> zzdwk = bg.a("analytics.max_hits_per_dispatch", 20, 20);
    public static bg<Integer> zzdwl = bg.a("analytics.max_hits_per_batch", 20, 20);
    public static bg<String> zzdwm = bg.a("analytics.insecure_host", "http://www.google-analytics.com", "http://www.google-analytics.com");
    public static bg<String> zzdwn = bg.a("analytics.secure_host", "https://ssl.google-analytics.com", "https://ssl.google-analytics.com");
    public static bg<String> zzdwo = bg.a("analytics.simple_endpoint", "/collect", "/collect");
    public static bg<String> zzdwp = bg.a("analytics.batching_endpoint", "/batch", "/batch");
    public static bg<Integer> zzdwq = bg.a("analytics.max_get_length", 2036, 2036);
    public static bg<String> zzdwr = bg.a("analytics.batching_strategy.k", zzaqt.BATCH_BY_COUNT.name(), zzaqt.BATCH_BY_COUNT.name());
    public static bg<String> zzdws;
    public static bg<Integer> zzdwu = bg.a("analytics.max_hit_length.k", 8192, 8192);
    public static bg<Integer> zzdwv = bg.a("analytics.max_post_length.k", 8192, 8192);
    public static bg<Integer> zzdww = bg.a("analytics.max_batch_post_length", 8192, 8192);
    public static bg<String> zzdwx = bg.a("analytics.fallback_responses.k", "404,502", "404,502");
    public static bg<Integer> zzdwy = bg.a("analytics.batch_retry_interval.seconds.k", 3600, 3600);
    public static bg<Integer> zzdxa = bg.a("analytics.http_connection.connect_timeout_millis", 60000, 60000);
    public static bg<Integer> zzdxb = bg.a("analytics.http_connection.read_timeout_millis", 61000, 61000);
    public static bg<Long> zzdxc = bg.a("analytics.campaigns.time_limit", 86400000, 86400000);
    public static bg<Boolean> zzdxf = bg.a("analytics.test.disable_receiver", false, false);
    public static bg<Long> zzdxg = bg.a("analytics.service_client.idle_disconnect_millis", 10000, 10000);
    public static bg<Long> zzdxh = bg.a("analytics.service_client.connect_timeout_millis", 5000, 5000);
    public static bg<Long> zzdxk = bg.a("analytics.service_client.reconnect_throttle_millis", 1800000, 1800000);
    public static bg<Long> zzdxl = bg.a("analytics.monitoring.sample_period_millis", 86400000, 86400000);
    public static bg<Long> zzdxm = bg.a("analytics.initialization_warning_threshold", 5000, 5000);

    static {
        Float valueOf = Float.valueOf(0.5f);
        c = new bg<>(dx.zza("analytics.tokens_per_sec", valueOf), valueOf);
        String name = zzaqz.GZIP.name();
        zzdws = bg.a("analytics.compression_strategy.k", name, name);
    }
}
