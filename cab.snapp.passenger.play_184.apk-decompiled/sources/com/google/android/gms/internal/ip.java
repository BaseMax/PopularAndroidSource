package com.google.android.gms.internal;

import com.adjust.sdk.Constants;

public final class ip {

    /* renamed from: a  reason: collision with root package name */
    private static iq<Boolean> f3217a = iq.a("measurement.service_enabled", true, true);

    /* renamed from: b  reason: collision with root package name */
    private static iq<Boolean> f3218b = iq.a("measurement.service_client_enabled", true, true);
    private static iq<Boolean> c = iq.a("measurement.log_third_party_store_events_enabled", false, false);
    private static iq<Boolean> d = iq.a("measurement.log_installs_enabled", false, false);
    private static iq<Boolean> e = iq.a("measurement.log_upgrades_enabled", false, false);
    private static iq<Boolean> f = iq.a("measurement.log_androidId_enabled", false, false);
    public static iq<Boolean> zzjab = iq.a("measurement.upload_dsid_enabled", false, false);
    public static iq<Boolean> zzjac = iq.a("measurement.event_sampling_enabled", false, false);
    public static iq<String> zzjad = iq.a("measurement.log_tag", "FA", "FA-SVC");
    public static iq<Long> zzjae = iq.a("measurement.ad_id_cache_time", 10000, 10000);
    public static iq<Long> zzjaf = iq.a("measurement.monitoring.sample_period_millis", 86400000, 86400000);
    public static iq<Long> zzjag = iq.a("measurement.config.cache_time", 86400000, 3600000);
    public static iq<String> zzjah = iq.a("measurement.config.url_scheme", Constants.SCHEME, Constants.SCHEME);
    public static iq<String> zzjai = iq.a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com");
    public static iq<Integer> zzjaj = iq.a("measurement.upload.max_bundles", 100, 100);
    public static iq<Integer> zzjak = iq.a("measurement.upload.max_batch_size", 65536, 65536);
    public static iq<Integer> zzjal = iq.a("measurement.upload.max_bundle_size", 65536, 65536);
    public static iq<Integer> zzjam = iq.a("measurement.upload.max_events_per_bundle", 1000, 1000);
    public static iq<Integer> zzjan = iq.a("measurement.upload.max_events_per_day", 100000, 100000);
    public static iq<Integer> zzjao = iq.a("measurement.upload.max_error_events_per_day", 1000, 1000);
    public static iq<Integer> zzjap = iq.a("measurement.upload.max_public_events_per_day", 50000, 50000);
    public static iq<Integer> zzjaq = iq.a("measurement.upload.max_conversions_per_day", 500, 500);
    public static iq<Integer> zzjar = iq.a("measurement.upload.max_realtime_events_per_day", 10, 10);
    public static iq<Integer> zzjas = iq.a("measurement.store.max_stored_events_per_app", 100000, 100000);
    public static iq<String> zzjat = iq.a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a");
    public static iq<Long> zzjau = iq.a("measurement.upload.backoff_period", 43200000, 43200000);
    public static iq<Long> zzjav = iq.a("measurement.upload.window_interval", 3600000, 3600000);
    public static iq<Long> zzjaw = iq.a("measurement.upload.interval", 3600000, 3600000);
    public static iq<Long> zzjax = iq.a("measurement.upload.realtime_upload_interval", 10000, 10000);
    public static iq<Long> zzjay = iq.a("measurement.upload.debug_upload_interval", 1000, 1000);
    public static iq<Long> zzjaz = iq.a("measurement.upload.minimum_delay", 500, 500);
    public static iq<Long> zzjba = iq.a("measurement.alarm_manager.minimum_interval", 60000, 60000);
    public static iq<Long> zzjbb = iq.a("measurement.upload.stale_data_deletion_interval", 86400000, 86400000);
    public static iq<Long> zzjbc = iq.a("measurement.upload.refresh_blacklisted_config_interval", 604800000, 604800000);
    public static iq<Long> zzjbd = iq.a("measurement.upload.initial_upload_delay_time", 15000, 15000);
    public static iq<Long> zzjbe = iq.a("measurement.upload.retry_time", 1800000, 1800000);
    public static iq<Integer> zzjbf = iq.a("measurement.upload.retry_count", 6, 6);
    public static iq<Long> zzjbg = iq.a("measurement.upload.max_queue_time", 2419200000L, 2419200000L);
    public static iq<Integer> zzjbh = iq.a("measurement.lifetimevalue.max_currency_tracked", 4, 4);
    public static iq<Integer> zzjbi = iq.a("measurement.audience.filter_result_max_count", 200, 200);
    public static iq<Long> zzjbj = iq.a("measurement.service_client.idle_disconnect_millis", 5000, 5000);
}
