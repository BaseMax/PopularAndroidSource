package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import b.b.a;
import b.b.c;
import b.b.e;
import b.b.g.Q;

/* renamed from: b.b.g.l  reason: case insensitive filesystem */
/* compiled from: AppCompatDrawableManager */
class C0221l implements Q.e {

    /* renamed from: a  reason: collision with root package name */
    public final int[] f2198a = {e.abc_textfield_search_default_mtrl_alpha, e.abc_textfield_default_mtrl_alpha, e.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: b  reason: collision with root package name */
    public final int[] f2199b = {e.abc_ic_commit_search_api_mtrl_alpha, e.abc_seekbar_tick_mark_material, e.abc_ic_menu_share_mtrl_alpha, e.abc_ic_menu_copy_mtrl_am_alpha, e.abc_ic_menu_cut_mtrl_alpha, e.abc_ic_menu_selectall_mtrl_alpha, e.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: c  reason: collision with root package name */
    public final int[] f2200c = {e.abc_textfield_activated_mtrl_alpha, e.abc_textfield_search_activated_mtrl_alpha, e.abc_cab_background_top_mtrl_alpha, e.abc_text_cursor_material, e.abc_text_select_handle_left_mtrl_dark, e.abc_text_select_handle_middle_mtrl_dark, e.abc_text_select_handle_right_mtrl_dark, e.abc_text_select_handle_left_mtrl_light, e.abc_text_select_handle_middle_mtrl_light, e.abc_text_select_handle_right_mtrl_light};

    /* renamed from: d  reason: collision with root package name */
    public final int[] f2201d = {e.abc_popup_background_mtrl_mult, e.abc_cab_background_internal_bg, e.abc_menu_hardkey_panel_mtrl_mult};

    /* renamed from: e  reason: collision with root package name */
    public final int[] f2202e = {e.abc_tab_indicator_material, e.abc_textfield_search_material};

    /* renamed from: f  reason: collision with root package name */
    public final int[] f2203f = {e.abc_btn_check_material, e.abc_btn_radio_material, e.abc_btn_check_material_anim, e.abc_btn_radio_material_anim};

    public final ColorStateList a(Context context) {
        return b(context, 0);
    }

    public final ColorStateList b(Context context) {
        return b(context, ka.b(context, a.colorAccent));
    }

    public final ColorStateList c(Context context) {
        return b(context, ka.b(context, a.colorButtonNormal));
    }

    public final ColorStateList d(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList c2 = ka.c(context, a.colorSwitchThumbNormal);
        if (c2 == null || !c2.isStateful()) {
            iArr[0] = ka.f2189b;
            iArr2[0] = ka.a(context, a.colorSwitchThumbNormal);
            iArr[1] = ka.f2193f;
            iArr2[1] = ka.b(context, a.colorControlActivated);
            iArr[2] = ka.f2196i;
            iArr2[2] = ka.b(context, a.colorSwitchThumbNormal);
        } else {
            iArr[0] = ka.f2189b;
            iArr2[0] = c2.getColorForState(iArr[0], 0);
            iArr[1] = ka.f2193f;
            iArr2[1] = ka.b(context, a.colorControlActivated);
            iArr[2] = ka.f2196i;
            iArr2[2] = c2.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public Drawable a(Q q, Context context, int i2) {
        if (i2 != e.abc_cab_background_top_material) {
            return null;
        }
        return new LayerDrawable(new Drawable[]{q.b(context, e.abc_cab_background_internal_bg), q.b(context, e.abc_cab_background_top_mtrl_alpha)});
    }

    public final ColorStateList b(Context context, int i2) {
        int b2 = ka.b(context, a.colorControlHighlight);
        int a2 = ka.a(context, a.colorButtonNormal);
        return new ColorStateList(new int[][]{ka.f2189b, ka.f2192e, ka.f2190c, ka.f2196i}, new int[]{a2, b.i.c.a.b(b2, i2), b.i.c.a.b(b2, i2), i2});
    }

    public final void a(Drawable drawable, int i2, PorterDuff.Mode mode) {
        if (H.a(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = C0222m.f2204a;
        }
        drawable.setColorFilter(C0222m.a(i2, mode));
    }

    public final boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public ColorStateList a(Context context, int i2) {
        if (i2 == e.abc_edit_text_material) {
            return b.b.b.a.a.b(context, c.abc_tint_edittext);
        }
        if (i2 == e.abc_switch_track_mtrl_alpha) {
            return b.b.b.a.a.b(context, c.abc_tint_switch_track);
        }
        if (i2 == e.abc_switch_thumb_material) {
            return d(context);
        }
        if (i2 == e.abc_btn_default_mtrl_shape) {
            return c(context);
        }
        if (i2 == e.abc_btn_borderless_material) {
            return a(context);
        }
        if (i2 == e.abc_btn_colored_material) {
            return b(context);
        }
        if (i2 == e.abc_spinner_mtrl_am_alpha || i2 == e.abc_spinner_textfield_background_material) {
            return b.b.b.a.a.b(context, c.abc_tint_spinner);
        }
        if (a(this.f2199b, i2)) {
            return ka.c(context, a.colorControlNormal);
        }
        if (a(this.f2202e, i2)) {
            return b.b.b.a.a.b(context, c.abc_tint_default);
        }
        if (a(this.f2203f, i2)) {
            return b.b.b.a.a.b(context, c.abc_tint_btn_checkable);
        }
        if (i2 == e.abc_seekbar_thumb_material) {
            return b.b.b.a.a.b(context, c.abc_tint_seek_thumb);
        }
        return null;
    }

    public boolean b(Context context, int i2, Drawable drawable) {
        if (i2 == e.abc_seekbar_track_material) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            a(layerDrawable.findDrawableByLayerId(16908288), ka.b(context, a.colorControlNormal), C0222m.f2204a);
            a(layerDrawable.findDrawableByLayerId(16908303), ka.b(context, a.colorControlNormal), C0222m.f2204a);
            a(layerDrawable.findDrawableByLayerId(16908301), ka.b(context, a.colorControlActivated), C0222m.f2204a);
            return true;
        } else if (i2 != e.abc_ratingbar_material && i2 != e.abc_ratingbar_indicator_material && i2 != e.abc_ratingbar_small_material) {
            return false;
        } else {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            a(layerDrawable2.findDrawableByLayerId(16908288), ka.a(context, a.colorControlNormal), C0222m.f2204a);
            a(layerDrawable2.findDrawableByLayerId(16908303), ka.b(context, a.colorControlActivated), C0222m.f2204a);
            a(layerDrawable2.findDrawableByLayerId(16908301), ka.b(context, a.colorControlActivated), C0222m.f2204a);
            return true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0066 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
        /*
            r6 = this;
            android.graphics.PorterDuff$Mode r0 = b.b.g.C0222m.f2204a
            int[] r1 = r6.f2198a
            boolean r1 = r6.a((int[]) r1, (int) r8)
            r2 = 16842801(0x1010031, float:2.3693695E-38)
            r3 = -1
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L_0x0018
            int r2 = b.b.a.colorControlNormal
        L_0x0014:
            r1 = r0
            r8 = 1
            r0 = -1
            goto L_0x0049
        L_0x0018:
            int[] r1 = r6.f2200c
            boolean r1 = r6.a((int[]) r1, (int) r8)
            if (r1 == 0) goto L_0x0023
            int r2 = b.b.a.colorControlActivated
            goto L_0x0014
        L_0x0023:
            int[] r1 = r6.f2201d
            boolean r1 = r6.a((int[]) r1, (int) r8)
            if (r1 == 0) goto L_0x002e
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L_0x0014
        L_0x002e:
            int r1 = b.b.e.abc_list_divider_mtrl_alpha
            if (r8 != r1) goto L_0x0040
            r2 = 16842800(0x1010030, float:2.3693693E-38)
            r8 = 1109603123(0x42233333, float:40.8)
            int r8 = java.lang.Math.round(r8)
            r1 = r0
            r0 = r8
            r8 = 1
            goto L_0x0049
        L_0x0040:
            int r1 = b.b.e.abc_dialog_material_background
            if (r8 != r1) goto L_0x0045
            goto L_0x0014
        L_0x0045:
            r1 = r0
            r8 = 0
            r0 = -1
            r2 = 0
        L_0x0049:
            if (r8 == 0) goto L_0x0066
            boolean r8 = b.b.g.H.a(r9)
            if (r8 == 0) goto L_0x0055
            android.graphics.drawable.Drawable r9 = r9.mutate()
        L_0x0055:
            int r7 = b.b.g.ka.b(r7, r2)
            android.graphics.PorterDuffColorFilter r7 = b.b.g.C0222m.a((int) r7, (android.graphics.PorterDuff.Mode) r1)
            r9.setColorFilter(r7)
            if (r0 == r3) goto L_0x0065
            r9.setAlpha(r0)
        L_0x0065:
            return r5
        L_0x0066:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.C0221l.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    public PorterDuff.Mode a(int i2) {
        if (i2 == e.abc_switch_thumb_material) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }
}
