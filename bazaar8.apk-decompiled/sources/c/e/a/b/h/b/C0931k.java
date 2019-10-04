package c.e.a.b.h.b;

import android.content.Context;
import c.e.a.b.d.d;
import c.e.a.b.d.e;
import c.e.a.b.g.f.C0827ha;
import c.e.a.b.g.f.C0866ra;
import c.e.a.b.g.f.C0870sa;
import c.e.a.b.g.f.C0894ya;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.core.LogFileManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: c.e.a.b.h.b.k  reason: case insensitive filesystem */
public final class C0931k {
    public static a<Integer> A = a.a("measurement.upload.max_public_events_per_day", 50000, 50000);
    public static a<Boolean> Aa = a.a("measurement.upload.disable_is_uploader", false, false);
    public static a<Integer> B = a.a("measurement.upload.max_conversions_per_day", 500, 500);
    public static a<Boolean> Ba = a.a("measurement.experiment.enable_experiment_reporting", false, false);
    public static a<Integer> C = a.a("measurement.upload.max_realtime_events_per_day", 10, 10);
    public static a<Boolean> Ca = a.a("measurement.collection.log_event_and_bundle_v2", true, true);
    public static a<Integer> D = a.a("measurement.store.max_stored_events_per_app", 100000, 100000);
    public static a<Boolean> Da = a.a("measurement.collection.null_empty_event_name_fix", true, true);
    public static a<String> E = a.a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a");
    public static a<Boolean> Ea = a.a("measurement.audience.sequence_filters", false, false);
    public static a<Long> F = a.a("measurement.upload.backoff_period", 43200000, 43200000);
    public static a<Boolean> Fa = a.a("measurement.quality.checksum", false, false);
    public static a<Long> G = a.a("measurement.upload.window_interval", 3600000, 3600000);
    public static a<Boolean> Ga = a.a("measurement.module.collection.conditionally_omit_admob_app_id", true, true);
    public static a<Long> H = a.a("measurement.upload.interval", 3600000, 3600000);
    public static a<Boolean> Ha = a.a("measurement.sdk.dynamite.use_dynamite", false, false);
    public static a<Long> I = a.a("measurement.upload.realtime_upload_interval", 10000, 10000);
    public static a<Boolean> Ia = a.a("measurement.sdk.dynamite.allow_remote_dynamite", false, false);
    public static a<Long> J = a.a("measurement.upload.debug_upload_interval", 1000, 1000);
    public static a<Boolean> Ja = a.a("measurement.sdk.collection.validate_param_names_alphabetical", false, false);
    public static a<Long> K = a.a("measurement.upload.minimum_delay", 500, 500);
    public static a<Boolean> Ka = a.a("measurement.collection.event_safelist", false, false);
    public static a<Long> L = a.a("measurement.alarm_manager.minimum_interval", 60000, 60000);
    public static a<Boolean> La = a.a("measurement.service.audience.scoped_filters", false, false);
    public static a<Long> M = a.a("measurement.upload.stale_data_deletion_interval", 86400000, 86400000);
    public static a<Long> N = a.a("measurement.upload.refresh_blacklisted_config_interval", 604800000, 604800000);
    public static a<Long> O = a.a("measurement.upload.initial_upload_delay_time", 15000, 15000);
    public static a<Long> P = a.a("measurement.upload.retry_time", 1800000, 1800000);
    public static a<Integer> Q = a.a("measurement.upload.retry_count", 6, 6);
    public static a<Long> R = a.a("measurement.upload.max_queue_time", 2419200000L, 2419200000L);
    public static a<Integer> S = a.a("measurement.lifetimevalue.max_currency_tracked", 4, 4);
    public static a<Integer> T = a.a("measurement.audience.filter_result_max_count", 200, 200);
    public static a<Long> U = a.a("measurement.service_client.idle_disconnect_millis", 5000, 5000);
    public static a<Boolean> V = a.a("measurement.test.boolean_flag", false, false);
    public static a<String> W = a.a("measurement.test.string_flag", "---", "---");
    public static a<Long> X = a.a("measurement.test.long_flag", -1, -1);
    public static a<Integer> Y = a.a("measurement.test.int_flag", -2, -2);
    public static a<Double> Z = a.a("measurement.test.double_flag", -3.0d, -3.0d);

    /* renamed from: a  reason: collision with root package name */
    public static nc f10943a;
    public static a<Integer> aa = a.a("measurement.experiment.max_ids", 50, 50);

    /* renamed from: b  reason: collision with root package name */
    public static List<a<Integer>> f10944b = new ArrayList();
    public static a<Boolean> ba = a.a("measurement.lifetimevalue.user_engagement_tracking_enabled", true, true);

    /* renamed from: c  reason: collision with root package name */
    public static List<a<Long>> f10945c = new ArrayList();
    public static a<Boolean> ca = a.a("measurement.audience.complex_param_evaluation", true, true);

    /* renamed from: d  reason: collision with root package name */
    public static List<a<Boolean>> f10946d = new ArrayList();
    public static a<Boolean> da = a.a("measurement.validation.internal_limits_internal_event_params", false, false);

    /* renamed from: e  reason: collision with root package name */
    public static List<a<String>> f10947e = new ArrayList();
    public static a<Boolean> ea = a.a("measurement.quality.unsuccessful_update_retry_counter", true, true);

    /* renamed from: f  reason: collision with root package name */
    public static List<a<Double>> f10948f = new ArrayList();
    public static a<Boolean> fa = a.a("measurement.iid.disable_on_collection_disabled", true, true);

    /* renamed from: g  reason: collision with root package name */
    public static final C0894ya f10949g = new C0894ya(C0866ra.a("com.google.android.gms.measurement"));
    public static a<Boolean> ga = a.a("measurement.app_launch.call_only_when_enabled", true, true);

    /* renamed from: h  reason: collision with root package name */
    public static volatile Y f10950h;
    public static a<Boolean> ha = a.a("measurement.run_on_worker_inline", true, true);

    /* renamed from: i  reason: collision with root package name */
    public static Boolean f10951i;
    public static a<Boolean> ia = a.a("measurement.audience.dynamic_filters", true, true);

    /* renamed from: j  reason: collision with root package name */
    public static a<Boolean> f10952j = a.a("measurement.log_third_party_store_events_enabled", false, false);
    public static a<Boolean> ja = a.a("measurement.reset_analytics.persist_time", false, false);

    /* renamed from: k  reason: collision with root package name */
    public static a<Boolean> f10953k = a.a("measurement.log_installs_enabled", false, false);
    public static a<Boolean> ka = a.a("measurement.validation.value_and_currency_params", false, false);

    /* renamed from: l  reason: collision with root package name */
    public static a<Boolean> f10954l = a.a("measurement.log_upgrades_enabled", false, false);
    public static a<Boolean> la = a.a("measurement.sampling.time_zone_offset_enabled", false, false);
    public static a<Boolean> m = a.a("measurement.log_androidId_enabled", false, false);
    public static a<Boolean> ma = a.a("measurement.referrer.enable_logging_install_referrer_cmp_from_apk", false, false);
    public static a<Boolean> n = a.a("measurement.upload_dsid_enabled", false, false);
    public static a<Boolean> na = a.a("measurement.fetch_config_with_admob_app_id", true, true);
    public static a<String> o = a.a("measurement.log_tag", "FA", "FA-SVC");
    public static a<Boolean> oa = a.a("measurement.client.sessions.session_id_enabled", false, false);
    public static a<Long> p = a.a("measurement.ad_id_cache_time", 10000, 10000);
    public static a<Boolean> pa = a.a("measurement.service.sessions.session_number_enabled", false, false);
    public static a<Long> q = a.a("measurement.monitoring.sample_period_millis", 86400000, 86400000);
    public static a<Boolean> qa = a.a("measurement.client.sessions.immediate_start_enabled", false, false);
    public static a<Long> r = a.a("measurement.config.cache_time", 86400000, 3600000);
    public static a<Boolean> ra = a.a("measurement.client.sessions.background_sessions_enabled", false, false);
    public static a<String> s = a.a("measurement.config.url_scheme", "https", "https");
    public static a<Boolean> sa = a.a("measurement.client.sessions.remove_expired_session_properties_enabled", false, false);
    public static a<String> t = a.a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com");
    public static a<Boolean> ta = a.a("measurement.service.sessions.session_number_backfill_enabled", false, false);
    public static a<Integer> u = a.a("measurement.upload.max_bundles", 100, 100);
    public static a<Boolean> ua = a.a("measurement.service.sessions.remove_disabled_session_number", false, false);
    public static a<Integer> v = a.a("measurement.upload.max_batch_size", (int) LogFileManager.MAX_LOG_SIZE, (int) LogFileManager.MAX_LOG_SIZE);
    public static a<Boolean> va = a.a("measurement.collection.firebase_global_collection_flag_enabled", true, true);
    public static a<Integer> w = a.a("measurement.upload.max_bundle_size", (int) LogFileManager.MAX_LOG_SIZE, (int) LogFileManager.MAX_LOG_SIZE);
    public static a<Boolean> wa = a.a("measurement.collection.efficient_engagement_reporting_enabled", false, false);
    public static a<Integer> x = a.a("measurement.upload.max_events_per_bundle", (int) AnswersRetryFilesSender.BACKOFF_MS, (int) AnswersRetryFilesSender.BACKOFF_MS);
    public static a<Boolean> xa = a.a("measurement.collection.redundant_engagement_removal_enabled", false, false);
    public static a<Integer> y = a.a("measurement.upload.max_events_per_day", 100000, 100000);
    public static a<Boolean> ya = a.a("measurement.personalized_ads_signals_collection_enabled", false, false);
    public static a<Integer> z = a.a("measurement.upload.max_error_events_per_day", (int) AnswersRetryFilesSender.BACKOFF_MS, (int) AnswersRetryFilesSender.BACKOFF_MS);
    public static a<Boolean> za = a.a("measurement.collection.init_params_control_enabled", true, true);

    /* renamed from: c.e.a.b.h.b.k$a */
    public static final class a<V> {

        /* renamed from: a  reason: collision with root package name */
        public C0870sa<V> f10955a;

        /* renamed from: b  reason: collision with root package name */
        public final V f10956b;

        /* renamed from: c  reason: collision with root package name */
        public final V f10957c;

        /* renamed from: d  reason: collision with root package name */
        public volatile V f10958d;

        /* renamed from: e  reason: collision with root package name */
        public final String f10959e;

        public a(String str, V v, V v2) {
            this.f10959e = str;
            this.f10957c = v;
            this.f10956b = v2;
        }

        public static a<Boolean> a(String str, boolean z, boolean z2) {
            a<Boolean> aVar = new a<>(str, Boolean.valueOf(z), Boolean.valueOf(z2));
            C0931k.f10946d.add(aVar);
            return aVar;
        }

        public static void b() {
            synchronized (a.class) {
                for (a next : C0931k.f10946d) {
                    C0894ya a2 = C0931k.f10949g;
                    String str = next.f10959e;
                    nc ncVar = C0931k.f10943a;
                    next.f10955a = a2.a(str, ((Boolean) next.f10957c).booleanValue());
                }
                for (a next2 : C0931k.f10947e) {
                    C0894ya a3 = C0931k.f10949g;
                    String str2 = next2.f10959e;
                    nc ncVar2 = C0931k.f10943a;
                    next2.f10955a = a3.a(str2, (String) next2.f10957c);
                }
                for (a next3 : C0931k.f10945c) {
                    C0894ya a4 = C0931k.f10949g;
                    String str3 = next3.f10959e;
                    nc ncVar3 = C0931k.f10943a;
                    next3.f10955a = a4.a(str3, ((Long) next3.f10957c).longValue());
                }
                for (a next4 : C0931k.f10944b) {
                    C0894ya a5 = C0931k.f10949g;
                    String str4 = next4.f10959e;
                    nc ncVar4 = C0931k.f10943a;
                    next4.f10955a = a5.a(str4, ((Integer) next4.f10957c).intValue());
                }
                for (a next5 : C0931k.f10948f) {
                    C0894ya a6 = C0931k.f10949g;
                    String str5 = next5.f10959e;
                    nc ncVar5 = C0931k.f10943a;
                    next5.f10955a = a6.a(str5, ((Double) next5.f10957c).doubleValue());
                }
            }
        }

        public static a<String> a(String str, String str2, String str3) {
            a<String> aVar = new a<>(str, str2, str3);
            C0931k.f10947e.add(aVar);
            return aVar;
        }

        public static a<Long> a(String str, long j2, long j3) {
            a<Long> aVar = new a<>(str, Long.valueOf(j2), Long.valueOf(j3));
            C0931k.f10945c.add(aVar);
            return aVar;
        }

        public static a<Integer> a(String str, int i2, int i3) {
            a<Integer> aVar = new a<>(str, Integer.valueOf(i2), Integer.valueOf(i3));
            C0931k.f10944b.add(aVar);
            return aVar;
        }

        public static a<Double> a(String str, double d2, double d3) {
            Double valueOf = Double.valueOf(-3.0d);
            a<Double> aVar = new a<>(str, valueOf, valueOf);
            C0931k.f10948f.add(aVar);
            return aVar;
        }

        public final String a() {
            return this.f10959e;
        }

        public final V a(V v) {
            if (v != null) {
                return v;
            }
            if (C0931k.f10943a == null) {
                return this.f10957c;
            }
            if (nc.a()) {
                return this.f10958d == null ? this.f10957c : this.f10958d;
            }
            synchronized (a.class) {
                if (!nc.a()) {
                    nc ncVar = C0931k.f10943a;
                    try {
                        for (a next : C0931k.f10946d) {
                            next.f10958d = next.f10955a.a();
                        }
                        for (a next2 : C0931k.f10947e) {
                            next2.f10958d = next2.f10955a.a();
                        }
                        for (a next3 : C0931k.f10945c) {
                            next3.f10958d = next3.f10955a.a();
                        }
                        for (a next4 : C0931k.f10944b) {
                            next4.f10958d = next4.f10955a.a();
                        }
                        for (a next5 : C0931k.f10948f) {
                            next5.f10958d = next5.f10955a.a();
                        }
                    } catch (SecurityException e2) {
                        C0931k.a((Exception) e2);
                    }
                } else {
                    throw new IllegalStateException("Tried to refresh flag cache on main thread or on package side.");
                }
            }
            try {
                return this.f10955a.a();
            } catch (SecurityException e3) {
                C0931k.a((Exception) e3);
                return this.f10955a.b();
            }
        }
    }

    public static Map<String, String> a(Context context) {
        return C0827ha.a(context.getContentResolver(), C0866ra.a("com.google.android.gms.measurement")).a();
    }

    public static void a(Y y2) {
        f10950h = y2;
    }

    public static void a(Exception exc) {
        if (f10950h != null) {
            Context b2 = f10950h.b();
            if (f10951i == null) {
                f10951i = Boolean.valueOf(d.a().a(b2, (int) e.GOOGLE_PLAY_SERVICES_VERSION_CODE) == 0);
            }
            if (f10951i.booleanValue()) {
                f10950h.e().t().a("Got Exception on PhenotypeFlag.get on Play device", exc);
            }
        }
    }

    public static void a(nc ncVar) {
        f10943a = ncVar;
        a.b();
    }
}
