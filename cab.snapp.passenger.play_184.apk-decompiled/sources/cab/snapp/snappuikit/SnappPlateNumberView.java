package cab.snapp.snappuikit;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cab.snapp.snappuikit.a;

public class SnappPlateNumberView extends LinearLayout {
    public static final int ZONE_ANZALI = 1003;
    public static final int ZONE_ANZALI_NEW = 2003;
    public static final int ZONE_ARAS = 1001;
    public static final int ZONE_ARAS_NEW = 2001;
    public static final int ZONE_ARVAND = 1002;
    public static final int ZONE_ARVAND_NEW = 2002;
    public static final int ZONE_CHABAHAR = 1004;
    public static final int ZONE_CHABAHAR_NEW = 2004;
    public static final int ZONE_DEFAULT = 1;
    public static final int ZONE_GHESHM = 1005;
    public static final int ZONE_GHESHM_NEW = 2005;
    public static final int ZONE_KISH = 1006;
    public static final int ZONE_KISH_NEW = 2006;
    public static final int ZONE_MAKU = 1007;
    public static final int ZONE_MAKU_NEW = 2007;

    /* renamed from: a  reason: collision with root package name */
    private int f1604a;

    /* renamed from: b  reason: collision with root package name */
    private int f1605b;
    private boolean c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private g j;
    private ViewGroup k;
    private ViewGroup l;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        SnappPlateNumberView f1606a;

        public a(Context context) {
            this.f1606a = new SnappPlateNumberView(context, (byte) 0);
        }

        public final a setViewFrame(ViewGroup viewGroup) {
            this.f1606a.setViewFrame(viewGroup);
            return this;
        }

        public final a setZoneType(int i) {
            this.f1606a.setZoneType(i);
            return this;
        }

        public final a setIsMotorcycle(boolean z) {
            this.f1606a.setIsMotorcycle(z);
            return this;
        }

        public final a setSideNumber(String str) {
            this.f1606a.setSideNumber(str);
            return this;
        }

        public final a setMainNumber(String str) {
            this.f1606a.setMainNumber(str);
            return this;
        }

        public final a setMainCharacter(String str) {
            this.f1606a.setMainCharacter(str);
            return this;
        }

        public final a setMainNumberPartA(String str) {
            this.f1606a.setMainNumberPartA(str);
            return this;
        }

        public final a setMainNumberPartB(String str) {
            this.f1606a.setMainNumberPartB(str);
            return this;
        }

        public final a setIranId(String str) {
            this.f1606a.setIranId(str);
            return this;
        }

        public final SnappPlateNumberView build() {
            this.f1606a.a();
            return this.f1606a;
        }
    }

    class b extends g {

        /* renamed from: a  reason: collision with root package name */
        ImageView f1607a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1608b;
        TextView c;
        TextView d;
        TextView e;

        private b() {
            super(SnappPlateNumberView.this, (byte) 0);
        }

        /* synthetic */ b(SnappPlateNumberView snappPlateNumberView, byte b2) {
            this();
        }
    }

    class c extends g {

        /* renamed from: a  reason: collision with root package name */
        ImageView f1609a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1610b;
        TextView c;

        private c() {
            super(SnappPlateNumberView.this, (byte) 0);
        }

        /* synthetic */ c(SnappPlateNumberView snappPlateNumberView, byte b2) {
            this();
        }
    }

    class d extends g {

        /* renamed from: a  reason: collision with root package name */
        ImageView f1611a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1612b;
        TextView c;
        View d;
        View e;

        private d() {
            super(SnappPlateNumberView.this, (byte) 0);
        }

        /* synthetic */ d(SnappPlateNumberView snappPlateNumberView, byte b2) {
            this();
        }
    }

    class e extends g {

        /* renamed from: a  reason: collision with root package name */
        TextView f1613a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1614b;

        private e() {
            super(SnappPlateNumberView.this, (byte) 0);
        }

        /* synthetic */ e(SnappPlateNumberView snappPlateNumberView, byte b2) {
            this();
        }
    }

    class f extends g {

        /* renamed from: a  reason: collision with root package name */
        TextView f1615a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1616b;
        TextView c;
        TextView d;

        private f() {
            super(SnappPlateNumberView.this, (byte) 0);
        }

        /* synthetic */ f(SnappPlateNumberView snappPlateNumberView, byte b2) {
            this();
        }
    }

    class g {
        private g() {
        }

        /* synthetic */ g(SnappPlateNumberView snappPlateNumberView, byte b2) {
            this();
        }
    }

    /* synthetic */ SnappPlateNumberView(Context context, byte b2) {
        this(context);
    }

    private SnappPlateNumberView(Context context) {
        super(context);
        this.f1604a = 1;
        this.f1605b = 1;
        this.c = false;
    }

    /* access modifiers changed from: private */
    public void setViewFrame(ViewGroup viewGroup) {
        this.l = viewGroup;
    }

    /* access modifiers changed from: private */
    public void setZoneType(int i2) {
        this.f1604a = i2;
    }

    /* access modifiers changed from: private */
    public void setIsMotorcycle(boolean z) {
        this.c = z;
    }

    /* access modifiers changed from: private */
    public void setSideNumber(String str) {
        this.d = str;
    }

    /* access modifiers changed from: private */
    public void setMainNumber(String str) {
        this.e = str;
    }

    /* access modifiers changed from: private */
    public void setMainCharacter(String str) {
        this.f = str;
    }

    /* access modifiers changed from: private */
    public void setMainNumberPartA(String str) {
        this.g = str;
    }

    /* access modifiers changed from: private */
    public void setMainNumberPartB(String str) {
        this.h = str;
    }

    /* access modifiers changed from: private */
    public void setIranId(String str) {
        this.i = str;
    }

    public void updateZoneType(int i2) {
        this.f1604a = i2;
        a();
    }

    public void updateIsMotorcycle(boolean z) {
        this.c = z;
        a();
    }

    public void updateMainCharacter(String str) {
        this.f = str;
        d();
    }

    public void updateMainNumberPartA(String str) {
        this.g = str;
        d();
    }

    public void updateMainNumberPartB(String str) {
        this.h = str;
        d();
    }

    public void updateIranId(String str) {
        this.i = str;
        d();
    }

    /* access modifiers changed from: private */
    public void a() {
        if (getContext() != null) {
            b();
            c();
            d();
            e();
        }
    }

    private void b() {
        if (this.c) {
            this.f1605b = 2;
            return;
        }
        int i2 = this.f1604a;
        if (i2 == 1) {
            this.f1605b = 1;
        } else if (i2 == 1004 || i2 == 1005) {
            this.f1605b = 3;
        } else if (i2 == 1001 || i2 == 1002 || i2 == 1003 || i2 == 1006 || i2 == 1007) {
            this.f1605b = 4;
        } else {
            this.f1605b = 5;
        }
    }

    private void c() {
        int i2;
        removeAllViews();
        int i3 = this.f1605b;
        if (i3 == 2) {
            this.j = new e(this, (byte) 0);
            i2 = a.g.layout_plate_number_motorcycle;
        } else if (i3 == 3) {
            this.j = new d(this, (byte) 0);
            i2 = a.g.layout_plate_number_free_zone_older;
        } else if (i3 == 4) {
            this.j = new c(this, (byte) 0);
            i2 = a.g.layout_plate_number_free_zone_old;
        } else if (i3 != 5) {
            this.j = new f(this, (byte) 0);
            i2 = a.g.layout_plate_number_normal_car;
        } else {
            this.j = new b(this, (byte) 0);
            i2 = a.g.layout_plate_number_free_zone_new;
        }
        this.k = (ViewGroup) LayoutInflater.from(getContext()).inflate(i2, this, true);
        g gVar = this.j;
        if (gVar != null) {
            ViewGroup viewGroup = this.k;
            if (viewGroup != null) {
                if (gVar instanceof f) {
                    ((f) gVar).d = (TextView) viewGroup.findViewById(a.f.plate_number_normal_car_iran_id_tv);
                    ((f) this.j).f1615a = (TextView) this.k.findViewById(a.f.plate_number_normal_car_main_part_a_tv);
                    ((f) this.j).c = (TextView) this.k.findViewById(a.f.plate_number_normal_car_main_character_tv);
                    ((f) this.j).f1616b = (TextView) this.k.findViewById(a.f.plate_number_normal_car_main_part_b_tv);
                } else if (gVar instanceof e) {
                    ((e) gVar).f1613a = (TextView) viewGroup.findViewById(a.f.plate_number_motorcycle_side_tv);
                    ((e) this.j).f1614b = (TextView) this.k.findViewById(a.f.plate_number_motorcycle_main_tv);
                } else if (gVar instanceof d) {
                    ((d) gVar).f1612b = (TextView) viewGroup.findViewById(a.f.plate_number_free_zone_older_main_persian_tv);
                    ((d) this.j).c = (TextView) this.k.findViewById(a.f.plate_number_free_zone_older_main_english_tv);
                    ((d) this.j).f1611a = (ImageView) this.k.findViewById(a.f.plate_number_free_zone_older_side_iv);
                    ((d) this.j).d = this.k.findViewById(a.f.plate_number_free_zone_older_horizontal_divider);
                    ((d) this.j).e = this.k.findViewById(a.f.plate_number_free_zone_older_vertical_divider);
                } else if (gVar instanceof c) {
                    ((c) gVar).f1610b = (TextView) viewGroup.findViewById(a.f.plate_number_free_zone_old_main_persian_tv);
                    ((c) this.j).c = (TextView) this.k.findViewById(a.f.plate_number_free_zone_old_main_english_tv);
                    ((c) this.j).f1609a = (ImageView) this.k.findViewById(a.f.plate_number_free_zone_old_side_iv);
                } else if (gVar instanceof b) {
                    ((b) gVar).d = (TextView) viewGroup.findViewById(a.f.plate_number_free_zone_new_main_persian_tv);
                    ((b) this.j).e = (TextView) this.k.findViewById(a.f.plate_number_free_zone_new_main_english_tv);
                    ((b) this.j).f1608b = (TextView) this.k.findViewById(a.f.plate_number_free_zone_new_side_persian_tv);
                    ((b) this.j).c = (TextView) this.k.findViewById(a.f.plate_number_free_zone_new_side_english_tv);
                    ((b) this.j).f1607a = (ImageView) this.k.findViewById(a.f.plate_number_free_zone_new_side_iv);
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    this.k.setClipToOutline(true);
                }
            }
        }
    }

    private void d() {
        if (!(this.j == null || getContext() == null)) {
            g gVar = this.j;
            if (gVar instanceof f) {
                if (this.i != null) {
                    ((f) gVar).d.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.i));
                }
                if (this.g != null) {
                    ((f) this.j).f1615a.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.g));
                }
                if (this.f != null) {
                    ((f) this.j).c.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.f));
                }
                if (this.h != null) {
                    ((f) this.j).f1616b.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.h));
                }
            } else if (gVar instanceof e) {
                if (this.h != null) {
                    ((e) gVar).f1613a.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.h));
                }
                if (this.g != null) {
                    ((e) this.j).f1614b.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.g));
                }
            } else if (gVar instanceof d) {
                if (this.g != null) {
                    ((d) gVar).f1612b.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.g));
                }
                if (this.g != null) {
                    ((d) this.j).c.setText(cab.snapp.c.d.convertPersianToEnglishNumbers(this.g));
                }
                ((d) this.j).f1611a.setImageResource(getCorrectPlateSideImage());
                if (this.f1604a == 1004) {
                    ((d) this.j).d.setBackgroundColor(getContext().getResources().getColor(a.b.very_light_blue));
                    ((d) this.j).e.setBackgroundColor(getContext().getResources().getColor(a.b.very_light_blue));
                    ((d) this.j).c.setBackgroundColor(getContext().getResources().getColor(a.b.darkish_blue));
                    ((d) this.j).c.setTextColor(getContext().getResources().getColor(a.b.pure_white));
                }
            } else if (gVar instanceof c) {
                if (this.g != null) {
                    ((c) gVar).f1610b.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.g));
                }
                if (this.g != null) {
                    ((c) this.j).c.setText(cab.snapp.c.d.convertPersianToEnglishNumbers(this.g));
                }
                ((c) this.j).f1609a.setImageResource(getCorrectPlateSideImage());
            } else if (gVar instanceof b) {
                if (this.g != null) {
                    ((b) gVar).d.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.g));
                }
                if (this.g != null) {
                    ((b) this.j).e.setText(cab.snapp.c.d.convertPersianToEnglishNumbers(this.g));
                }
                if (this.i != null) {
                    ((b) this.j).f1608b.setText(cab.snapp.c.d.convertEngToPersianNumbers(this.i));
                    ((b) this.j).c.setText(cab.snapp.c.d.convertPersianToEnglishNumbers(this.i));
                }
                ((b) this.j).f1607a.setImageResource(getCorrectPlateSideImage());
            }
        }
    }

    private void e() {
        ViewGroup viewGroup = this.l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.l.addView(this);
        }
    }

    private int getCorrectPlateSideImage() {
        int i2 = this.f1604a;
        switch (i2) {
            case 1001:
                return a.d.image_plate_flag_aras_old;
            case 1002:
                return a.d.image_plate_flag_arvand_old;
            case 1003:
                return a.d.image_plate_flag_anzali_old;
            case 1004:
                return a.d.ic_plate_freezone_chabahar_old;
            case 1005:
                return a.d.image_plate_flag_gheshm_old;
            case 1006:
                return a.d.image_plate_flag_kish_old;
            case 1007:
                return a.d.image_plate_flag_maku_old;
            default:
                switch (i2) {
                    case ZONE_ARAS_NEW /*2001*/:
                        return a.d.image_plate_flag_aras;
                    case ZONE_ARVAND_NEW /*2002*/:
                        return a.d.image_plate_flag_arvand;
                    case ZONE_ANZALI_NEW /*2003*/:
                        return a.d.image_plate_flag_anzali;
                    case ZONE_CHABAHAR_NEW /*2004*/:
                        return a.d.image_plate_flag_chabahar;
                    case ZONE_GHESHM_NEW /*2005*/:
                        return a.d.ic_plate_freezone_gheshm_new;
                    case ZONE_KISH_NEW /*2006*/:
                        return a.d.image_plate_flag_kish;
                    case ZONE_MAKU_NEW /*2007*/:
                        return a.d.image_plate_flag_maku;
                    default:
                        return 0;
                }
        }
    }
}
