package c.c.a;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0274d;
import b.l.C0276f;
import c.c.a.f.Aa;
import c.c.a.f.Ac;
import c.c.a.f.B;
import c.c.a.f.Bb;
import c.c.a.f.C0400aa;
import c.c.a.f.C0402ac;
import c.c.a.f.C0403b;
import c.c.a.f.C0405bb;
import c.c.a.f.C0408ca;
import c.c.a.f.C0410cc;
import c.c.a.f.C0411d;
import c.c.a.f.C0413db;
import c.c.a.f.C0416ea;
import c.c.a.f.C0418ec;
import c.c.a.f.C0419f;
import c.c.a.f.C0421fb;
import c.c.a.f.C0424ga;
import c.c.a.f.C0426gc;
import c.c.a.f.C0427h;
import c.c.a.f.C0429hb;
import c.c.a.f.C0431ia;
import c.c.a.f.C0433j;
import c.c.a.f.C0435jb;
import c.c.a.f.C0437ka;
import c.c.a.f.C0439l;
import c.c.a.f.C0441lb;
import c.c.a.f.C0443ma;
import c.c.a.f.C0445n;
import c.c.a.f.C0447nb;
import c.c.a.f.C0449oa;
import c.c.a.f.C0451p;
import c.c.a.f.C0453pb;
import c.c.a.f.C0455qa;
import c.c.a.f.C0458rb;
import c.c.a.f.C0460sa;
import c.c.a.f.C0462t;
import c.c.a.f.C0464tb;
import c.c.a.f.C0466ua;
import c.c.a.f.C0468v;
import c.c.a.f.C0470vb;
import c.c.a.f.C0472wa;
import c.c.a.f.C0474x;
import c.c.a.f.C0476xb;
import c.c.a.f.C0478ya;
import c.c.a.f.C0480z;
import c.c.a.f.C0482zb;
import c.c.a.f.Ca;
import c.c.a.f.Cc;
import c.c.a.f.D;
import c.c.a.f.Db;
import c.c.a.f.Ea;
import c.c.a.f.Ec;
import c.c.a.f.F;
import c.c.a.f.Fb;
import c.c.a.f.Ga;
import c.c.a.f.Gc;
import c.c.a.f.H;
import c.c.a.f.Hb;
import c.c.a.f.Ia;
import c.c.a.f.J;
import c.c.a.f.Jb;
import c.c.a.f.Ka;
import c.c.a.f.L;
import c.c.a.f.Lb;
import c.c.a.f.Ma;
import c.c.a.f.N;
import c.c.a.f.Nb;
import c.c.a.f.Oa;
import c.c.a.f.P;
import c.c.a.f.Pb;
import c.c.a.f.Qa;
import c.c.a.f.Rb;
import c.c.a.f.S;
import c.c.a.f.Sa;
import c.c.a.f.Tb;
import c.c.a.f.U;
import c.c.a.f.Ua;
import c.c.a.f.Vb;
import c.c.a.f.W;
import c.c.a.f.Wa;
import c.c.a.f.Xb;
import c.c.a.f.Y;
import c.c.a.f.Ya;
import c.c.a.f.Zb;
import c.c.a.f._a;
import c.c.a.f.ic;
import c.c.a.f.kc;
import c.c.a.f.mc;
import c.c.a.f.oc;
import c.c.a.f.qc;
import c.c.a.f.r;
import c.c.a.f.sc;
import c.c.a.f.uc;
import c.c.a.f.wc;
import c.c.a.f.yc;
import com.farsitel.bazaar.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DataBinderMapperImpl */
public class a extends C0274d {

    /* renamed from: a  reason: collision with root package name */
    public static final SparseIntArray f4474a = new SparseIntArray(95);

    static {
        f4474a.put(R.layout.activity_main, 1);
        f4474a.put(R.layout.activity_splash, 2);
        f4474a.put(R.layout.alert_thirdpart_review, 3);
        f4474a.put(R.layout.dialog_force_update, 4);
        f4474a.put(R.layout.fragment_more_article, 5);
        f4474a.put(R.layout.fragment_more_description, 6);
        f4474a.put(R.layout.fragment_more_description_detail, 7);
        f4474a.put(R.layout.fragment_more_review, 8);
        f4474a.put(R.layout.fragment_my_bazaar, 9);
        f4474a.put(R.layout.fragment_post_comment, 10);
        f4474a.put(R.layout.fragment_report_app, 11);
        f4474a.put(R.layout.fragment_screenshot, 12);
        f4474a.put(R.layout.fragment_screenshot_item, 13);
        f4474a.put(R.layout.item_app_detail_developer_info, 14);
        f4474a.put(R.layout.item_app_detail_screen_shot, 15);
        f4474a.put(R.layout.item_appdetail_app_info, 16);
        f4474a.put(R.layout.item_appdetail_changelog, 17);
        f4474a.put(R.layout.item_appdetail_description, 18);
        f4474a.put(R.layout.item_appdetail_divider, 19);
        f4474a.put(R.layout.item_appdetail_editor_choise, 20);
        f4474a.put(R.layout.item_appdetail_more_description, 21);
        f4474a.put(R.layout.item_appdetail_my_rate, 22);
        f4474a.put(R.layout.item_appdetail_rate_info, 23);
        f4474a.put(R.layout.item_appdetail_report, 24);
        f4474a.put(R.layout.item_article, 25);
        f4474a.put(R.layout.item_article_title, 26);
        f4474a.put(R.layout.item_category, 27);
        f4474a.put(R.layout.item_cinema_episode, 28);
        f4474a.put(R.layout.item_cinema_episode_see_more, 29);
        f4474a.put(R.layout.item_cinema_season_episode, 30);
        f4474a.put(R.layout.item_divider, 31);
        f4474a.put(R.layout.item_editor_choice_header, 32);
        f4474a.put(R.layout.item_genre, 33);
        f4474a.put(R.layout.item_list_app, 34);
        f4474a.put(R.layout.item_list_category, 35);
        f4474a.put(R.layout.item_list_category_header, 36);
        f4474a.put(R.layout.item_list_episode, 37);
        f4474a.put(R.layout.item_list_hami_app, 38);
        f4474a.put(R.layout.item_list_hami_inline, 39);
        f4474a.put(R.layout.item_list_inline_app, 40);
        f4474a.put(R.layout.item_list_mini_app, 41);
        f4474a.put(R.layout.item_list_promo, 42);
        f4474a.put(R.layout.item_list_serial, 43);
        f4474a.put(R.layout.item_list_video, 44);
        f4474a.put(R.layout.item_load_more, 45);
        f4474a.put(R.layout.item_malicious_header, 46);
        f4474a.put(R.layout.item_more_article, 47);
        f4474a.put(R.layout.item_my_bazaar, 48);
        f4474a.put(R.layout.item_my_bazaar_header, 49);
        f4474a.put(R.layout.item_my_bazaar_switch, 50);
        f4474a.put(R.layout.item_page_description, 51);
        f4474a.put(R.layout.item_payment_option, 52);
        f4474a.put(R.layout.item_profile, 53);
        f4474a.put(R.layout.item_profile_credit, 54);
        f4474a.put(R.layout.item_profile_header, 55);
        f4474a.put(R.layout.item_release_note_desc, 56);
        f4474a.put(R.layout.item_release_note_header, 57);
        f4474a.put(R.layout.item_retry, 58);
        f4474a.put(R.layout.item_review, 59);
        f4474a.put(R.layout.item_review_more, 60);
        f4474a.put(R.layout.item_screenshot_image, 61);
        f4474a.put(R.layout.item_screenshot_video, 62);
        f4474a.put(R.layout.item_scrollable, 63);
        f4474a.put(R.layout.item_search_history, 64);
        f4474a.put(R.layout.item_subscription_app, 65);
        f4474a.put(R.layout.item_transaction, 66);
        f4474a.put(R.layout.item_transaction_header, 67);
        f4474a.put(R.layout.item_upgradable_header, 68);
        f4474a.put(R.layout.item_video_add_review, 69);
        f4474a.put(R.layout.item_video_detail_crew_item, 70);
        f4474a.put(R.layout.item_video_detail_crew_persons_item_bold, 71);
        f4474a.put(R.layout.item_video_detail_crew_persons_item_normal, 72);
        f4474a.put(R.layout.item_video_detail_crews, 73);
        f4474a.put(R.layout.item_video_detail_other_info_item, 74);
        f4474a.put(R.layout.item_video_detail_other_info_title, 75);
        f4474a.put(R.layout.item_video_detail_progress, 76);
        f4474a.put(R.layout.item_video_detail_season_list_item, 77);
        f4474a.put(R.layout.item_video_detail_series_season_item, 78);
        f4474a.put(R.layout.item_video_detail_series_single_season_item, 79);
        f4474a.put(R.layout.item_video_detail_video_actions, 80);
        f4474a.put(R.layout.item_video_detail_video_big_screenshot_cover_item, 81);
        f4474a.put(R.layout.item_video_detail_video_description, 82);
        f4474a.put(R.layout.item_video_detail_video_info, 83);
        f4474a.put(R.layout.item_video_detail_video_screenshot_cover_item, 84);
        f4474a.put(R.layout.item_video_detail_video_screenshots, 85);
        f4474a.put(R.layout.item_video_detail_video_trailer_cover_item, 86);
        f4474a.put(R.layout.item_video_download_header, 87);
        f4474a.put(R.layout.item_video_download_normal, 88);
        f4474a.put(R.layout.item_video_downloaded, 89);
        f4474a.put(R.layout.item_video_review_more, 90);
        f4474a.put(R.layout.item_video_review_title, 91);
        f4474a.put(R.layout.item_vitrin_app, 92);
        f4474a.put(R.layout.item_vitrin_promo, 93);
        f4474a.put(R.layout.item_vitrin_serial, 94);
        f4474a.put(R.layout.item_vitrin_video, 95);
    }

    public final ViewDataBinding a(C0276f fVar, View view, int i2, Object obj) {
        switch (i2) {
            case 1:
                if ("layout/activity_main_0".equals(obj)) {
                    return new C0403b(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_main is invalid. Received: " + obj);
            case 2:
                if ("layout/activity_splash_0".equals(obj)) {
                    return new C0411d(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_splash is invalid. Received: " + obj);
            case 3:
                if ("layout/alert_thirdpart_review_0".equals(obj)) {
                    return new C0419f(fVar, view);
                }
                throw new IllegalArgumentException("The tag for alert_thirdpart_review is invalid. Received: " + obj);
            case 4:
                if ("layout/dialog_force_update_0".equals(obj)) {
                    return new C0427h(fVar, view);
                }
                throw new IllegalArgumentException("The tag for dialog_force_update is invalid. Received: " + obj);
            case 5:
                if ("layout/fragment_more_article_0".equals(obj)) {
                    return new C0433j(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_more_article is invalid. Received: " + obj);
            case 6:
                if ("layout/fragment_more_description_0".equals(obj)) {
                    return new C0439l(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_more_description is invalid. Received: " + obj);
            case 7:
                if ("layout/fragment_more_description_detail_0".equals(obj)) {
                    return new C0445n(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_more_description_detail is invalid. Received: " + obj);
            case 8:
                if ("layout/fragment_more_review_0".equals(obj)) {
                    return new C0451p(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_more_review is invalid. Received: " + obj);
            case 9:
                if ("layout/fragment_my_bazaar_0".equals(obj)) {
                    return new r(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_my_bazaar is invalid. Received: " + obj);
            case 10:
                if ("layout/fragment_post_comment_0".equals(obj)) {
                    return new C0462t(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_post_comment is invalid. Received: " + obj);
            case 11:
                if ("layout/fragment_report_app_0".equals(obj)) {
                    return new C0468v(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_report_app is invalid. Received: " + obj);
            case 12:
                if ("layout/fragment_screenshot_0".equals(obj)) {
                    return new C0474x(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_screenshot is invalid. Received: " + obj);
            case 13:
                if ("layout/fragment_screenshot_item_0".equals(obj)) {
                    return new C0480z(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_screenshot_item is invalid. Received: " + obj);
            case 14:
                if ("layout/item_app_detail_developer_info_0".equals(obj)) {
                    return new B(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_app_detail_developer_info is invalid. Received: " + obj);
            case 15:
                if ("layout/item_app_detail_screen_shot_0".equals(obj)) {
                    return new D(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_app_detail_screen_shot is invalid. Received: " + obj);
            case 16:
                if ("layout/item_appdetail_app_info_0".equals(obj)) {
                    return new F(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_app_info is invalid. Received: " + obj);
            case 17:
                if ("layout/item_appdetail_changelog_0".equals(obj)) {
                    return new H(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_changelog is invalid. Received: " + obj);
            case 18:
                if ("layout/item_appdetail_description_0".equals(obj)) {
                    return new J(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_description is invalid. Received: " + obj);
            case 19:
                if ("layout/item_appdetail_divider_0".equals(obj)) {
                    return new L(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_divider is invalid. Received: " + obj);
            case 20:
                if ("layout/item_appdetail_editor_choise_0".equals(obj)) {
                    return new N(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_editor_choise is invalid. Received: " + obj);
            case 21:
                if ("layout/item_appdetail_more_description_0".equals(obj)) {
                    return new P(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_more_description is invalid. Received: " + obj);
            case 22:
                if ("layout/item_appdetail_my_rate_0".equals(obj)) {
                    return new S(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_my_rate is invalid. Received: " + obj);
            case 23:
                if ("layout/item_appdetail_rate_info_0".equals(obj)) {
                    return new U(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_rate_info is invalid. Received: " + obj);
            case 24:
                if ("layout/item_appdetail_report_0".equals(obj)) {
                    return new W(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_appdetail_report is invalid. Received: " + obj);
            case 25:
                if ("layout/item_article_0".equals(obj)) {
                    return new Y(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_article is invalid. Received: " + obj);
            case 26:
                if ("layout/item_article_title_0".equals(obj)) {
                    return new C0400aa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_article_title is invalid. Received: " + obj);
            case 27:
                if ("layout/item_category_0".equals(obj)) {
                    return new C0408ca(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_category is invalid. Received: " + obj);
            case 28:
                if ("layout/item_cinema_episode_0".equals(obj)) {
                    return new C0416ea(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_cinema_episode is invalid. Received: " + obj);
            case 29:
                if ("layout/item_cinema_episode_see_more_0".equals(obj)) {
                    return new C0424ga(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_cinema_episode_see_more is invalid. Received: " + obj);
            case 30:
                if ("layout/item_cinema_season_episode_0".equals(obj)) {
                    return new C0431ia(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_cinema_season_episode is invalid. Received: " + obj);
            case 31:
                if ("layout/item_divider_0".equals(obj)) {
                    return new C0437ka(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_divider is invalid. Received: " + obj);
            case 32:
                if ("layout/item_editor_choice_header_0".equals(obj)) {
                    return new C0443ma(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_editor_choice_header is invalid. Received: " + obj);
            case 33:
                if ("layout/item_genre_0".equals(obj)) {
                    return new C0449oa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_genre is invalid. Received: " + obj);
            case 34:
                if ("layout/item_list_app_0".equals(obj)) {
                    return new C0455qa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_app is invalid. Received: " + obj);
            case 35:
                if ("layout/item_list_category_0".equals(obj)) {
                    return new C0460sa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_category is invalid. Received: " + obj);
            case 36:
                if ("layout/item_list_category_header_0".equals(obj)) {
                    return new C0466ua(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_category_header is invalid. Received: " + obj);
            case 37:
                if ("layout/item_list_episode_0".equals(obj)) {
                    return new C0472wa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_episode is invalid. Received: " + obj);
            case 38:
                if ("layout/item_list_hami_app_0".equals(obj)) {
                    return new C0478ya(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_hami_app is invalid. Received: " + obj);
            case 39:
                if ("layout/item_list_hami_inline_0".equals(obj)) {
                    return new Aa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_hami_inline is invalid. Received: " + obj);
            case 40:
                if ("layout/item_list_inline_app_0".equals(obj)) {
                    return new Ca(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_inline_app is invalid. Received: " + obj);
            case 41:
                if ("layout/item_list_mini_app_0".equals(obj)) {
                    return new Ea(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_mini_app is invalid. Received: " + obj);
            case 42:
                if ("layout/item_list_promo_0".equals(obj)) {
                    return new Ga(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_promo is invalid. Received: " + obj);
            case 43:
                if ("layout/item_list_serial_0".equals(obj)) {
                    return new Ia(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_serial is invalid. Received: " + obj);
            case 44:
                if ("layout/item_list_video_0".equals(obj)) {
                    return new Ka(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_list_video is invalid. Received: " + obj);
            case 45:
                if ("layout/item_load_more_0".equals(obj)) {
                    return new Ma(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_load_more is invalid. Received: " + obj);
            case 46:
                if ("layout/item_malicious_header_0".equals(obj)) {
                    return new Oa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_malicious_header is invalid. Received: " + obj);
            case 47:
                if ("layout/item_more_article_0".equals(obj)) {
                    return new Qa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_more_article is invalid. Received: " + obj);
            case 48:
                if ("layout/item_my_bazaar_0".equals(obj)) {
                    return new Sa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_my_bazaar is invalid. Received: " + obj);
            case 49:
                if ("layout/item_my_bazaar_header_0".equals(obj)) {
                    return new Ua(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_my_bazaar_header is invalid. Received: " + obj);
            case 50:
                if ("layout/item_my_bazaar_switch_0".equals(obj)) {
                    return new Wa(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_my_bazaar_switch is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    public final ViewDataBinding b(C0276f fVar, View view, int i2, Object obj) {
        switch (i2) {
            case 51:
                if ("layout/item_page_description_0".equals(obj)) {
                    return new Ya(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_page_description is invalid. Received: " + obj);
            case 52:
                if ("layout/item_payment_option_0".equals(obj)) {
                    return new _a(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_payment_option is invalid. Received: " + obj);
            case 53:
                if ("layout/item_profile_0".equals(obj)) {
                    return new C0405bb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_profile is invalid. Received: " + obj);
            case 54:
                if ("layout/item_profile_credit_0".equals(obj)) {
                    return new C0413db(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_profile_credit is invalid. Received: " + obj);
            case 55:
                if ("layout/item_profile_header_0".equals(obj)) {
                    return new C0421fb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_profile_header is invalid. Received: " + obj);
            case 56:
                if ("layout/item_release_note_desc_0".equals(obj)) {
                    return new C0429hb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_release_note_desc is invalid. Received: " + obj);
            case 57:
                if ("layout/item_release_note_header_0".equals(obj)) {
                    return new C0435jb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_release_note_header is invalid. Received: " + obj);
            case 58:
                if ("layout/item_retry_0".equals(obj)) {
                    return new C0441lb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_retry is invalid. Received: " + obj);
            case 59:
                if ("layout/item_review_0".equals(obj)) {
                    return new C0447nb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_review is invalid. Received: " + obj);
            case 60:
                if ("layout/item_review_more_0".equals(obj)) {
                    return new C0453pb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_review_more is invalid. Received: " + obj);
            case 61:
                if ("layout/item_screenshot_image_0".equals(obj)) {
                    return new C0458rb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_screenshot_image is invalid. Received: " + obj);
            case 62:
                if ("layout/item_screenshot_video_0".equals(obj)) {
                    return new C0464tb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_screenshot_video is invalid. Received: " + obj);
            case 63:
                if ("layout/item_scrollable_0".equals(obj)) {
                    return new C0470vb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_scrollable is invalid. Received: " + obj);
            case 64:
                if ("layout/item_search_history_0".equals(obj)) {
                    return new C0476xb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_search_history is invalid. Received: " + obj);
            case 65:
                if ("layout/item_subscription_app_0".equals(obj)) {
                    return new C0482zb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_subscription_app is invalid. Received: " + obj);
            case 66:
                if ("layout/item_transaction_0".equals(obj)) {
                    return new Bb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_transaction is invalid. Received: " + obj);
            case 67:
                if ("layout/item_transaction_header_0".equals(obj)) {
                    return new Db(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_transaction_header is invalid. Received: " + obj);
            case 68:
                if ("layout/item_upgradable_header_0".equals(obj)) {
                    return new Fb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_upgradable_header is invalid. Received: " + obj);
            case 69:
                if ("layout/item_video_add_review_0".equals(obj)) {
                    return new Hb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_add_review is invalid. Received: " + obj);
            case 70:
                if ("layout/item_video_detail_crew_item_0".equals(obj)) {
                    return new Jb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_crew_item is invalid. Received: " + obj);
            case 71:
                if ("layout/item_video_detail_crew_persons_item_bold_0".equals(obj)) {
                    return new Lb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_crew_persons_item_bold is invalid. Received: " + obj);
            case 72:
                if ("layout/item_video_detail_crew_persons_item_normal_0".equals(obj)) {
                    return new Nb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_crew_persons_item_normal is invalid. Received: " + obj);
            case 73:
                if ("layout/item_video_detail_crews_0".equals(obj)) {
                    return new Pb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_crews is invalid. Received: " + obj);
            case 74:
                if ("layout/item_video_detail_other_info_item_0".equals(obj)) {
                    return new Rb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_other_info_item is invalid. Received: " + obj);
            case 75:
                if ("layout/item_video_detail_other_info_title_0".equals(obj)) {
                    return new Tb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_other_info_title is invalid. Received: " + obj);
            case 76:
                if ("layout/item_video_detail_progress_0".equals(obj)) {
                    return new Vb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_progress is invalid. Received: " + obj);
            case 77:
                if ("layout/item_video_detail_season_list_item_0".equals(obj)) {
                    return new Xb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_season_list_item is invalid. Received: " + obj);
            case 78:
                if ("layout/item_video_detail_series_season_item_0".equals(obj)) {
                    return new Zb(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_series_season_item is invalid. Received: " + obj);
            case 79:
                if ("layout/item_video_detail_series_single_season_item_0".equals(obj)) {
                    return new C0402ac(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_series_single_season_item is invalid. Received: " + obj);
            case 80:
                if ("layout/item_video_detail_video_actions_0".equals(obj)) {
                    return new C0410cc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_actions is invalid. Received: " + obj);
            case 81:
                if ("layout/item_video_detail_video_big_screenshot_cover_item_0".equals(obj)) {
                    return new C0418ec(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_big_screenshot_cover_item is invalid. Received: " + obj);
            case 82:
                if ("layout/item_video_detail_video_description_0".equals(obj)) {
                    return new C0426gc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_description is invalid. Received: " + obj);
            case 83:
                if ("layout/item_video_detail_video_info_0".equals(obj)) {
                    return new ic(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_info is invalid. Received: " + obj);
            case 84:
                if ("layout/item_video_detail_video_screenshot_cover_item_0".equals(obj)) {
                    return new kc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_screenshot_cover_item is invalid. Received: " + obj);
            case 85:
                if ("layout/item_video_detail_video_screenshots_0".equals(obj)) {
                    return new mc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_screenshots is invalid. Received: " + obj);
            case 86:
                if ("layout/item_video_detail_video_trailer_cover_item_0".equals(obj)) {
                    return new oc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_detail_video_trailer_cover_item is invalid. Received: " + obj);
            case 87:
                if ("layout/item_video_download_header_0".equals(obj)) {
                    return new qc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_download_header is invalid. Received: " + obj);
            case 88:
                if ("layout/item_video_download_normal_0".equals(obj)) {
                    return new sc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_download_normal is invalid. Received: " + obj);
            case 89:
                if ("layout/item_video_downloaded_0".equals(obj)) {
                    return new uc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_downloaded is invalid. Received: " + obj);
            case 90:
                if ("layout/item_video_review_more_0".equals(obj)) {
                    return new wc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_review_more is invalid. Received: " + obj);
            case 91:
                if ("layout/item_video_review_title_0".equals(obj)) {
                    return new yc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_video_review_title is invalid. Received: " + obj);
            case 92:
                if ("layout/item_vitrin_app_0".equals(obj)) {
                    return new Ac(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_vitrin_app is invalid. Received: " + obj);
            case 93:
                if ("layout/item_vitrin_promo_0".equals(obj)) {
                    return new Cc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_vitrin_promo is invalid. Received: " + obj);
            case 94:
                if ("layout/item_vitrin_serial_0".equals(obj)) {
                    return new Ec(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_vitrin_serial is invalid. Received: " + obj);
            case 95:
                if ("layout/item_vitrin_video_0".equals(obj)) {
                    return new Gc(fVar, view);
                }
                throw new IllegalArgumentException("The tag for item_vitrin_video is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    public ViewDataBinding a(C0276f fVar, View view, int i2) {
        int i3 = f4474a.get(i2);
        if (i3 > 0) {
            Object tag = view.getTag();
            if (tag != null) {
                int i4 = (i3 - 1) / 50;
                if (i4 == 0) {
                    return a(fVar, view, i3, tag);
                }
                if (i4 == 1) {
                    return b(fVar, view, i3, tag);
                }
            } else {
                throw new RuntimeException("view must have a tag");
            }
        }
        return null;
    }

    public ViewDataBinding a(C0276f fVar, View[] viewArr, int i2) {
        if (viewArr == null || viewArr.length == 0 || f4474a.get(i2) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    public List<C0274d> a() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new b.l.b.a.a());
        arrayList.add(new c.c.a.d.a());
        return arrayList;
    }
}
