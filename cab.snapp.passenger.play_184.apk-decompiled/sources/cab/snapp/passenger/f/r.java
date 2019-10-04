package cab.snapp.passenger.f;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.f;
import cab.snapp.snappdialog.dialogViews.a.g;
import com.a.a.a;
import javax.inject.Inject;

public final class r {

    /* renamed from: a  reason: collision with root package name */
    private Context f589a;

    /* renamed from: b  reason: collision with root package name */
    private b f590b;
    private b c;
    private b d;
    private b e;
    private b f;

    /* access modifiers changed from: private */
    public static /* synthetic */ void d(View view) {
    }

    @Inject
    public r(Context context) {
        this.f589a = context;
    }

    public final void showLoadingDialog() {
        Context context = this.f589a;
        if (context != null) {
            if (this.f590b == null) {
                this.f590b = new b.a(context).setTheme(0).setDialogViewType(new f.a().setTitle(this.f589a.getString(R.string.please_wait)).build()).setCancelable(false).showOnBuild(false).build();
            }
            this.f590b.show();
        }
    }

    public final void hideLoadingDialog() {
        b bVar = this.f590b;
        if (bVar != null) {
            bVar.dismiss();
            this.f590b.cancel();
        }
    }

    public final void showInformativeDialog(int i, int i2, int i3, boolean z, int i4) {
        showInformativeDialog(this.f589a.getString(i), this.f589a.getString(i2), i3, z, i4);
    }

    public final void showInformativeDialog(String str, String str2, int i, boolean z, int i2) {
        if (this.f != null) {
            hideErrorDialog();
        }
        b.a showOnBuild = new b.a(this.f589a).setDialogTitle(str).isErrorInformation(z).setTheme(i).dismissOnButtonClick(401).setDialogViewType(new g.a().setMessage(str2).build()).setPositiveButton(this.f589a.getString(R.string.ok), (View.OnClickListener) $$Lambda$r$13ceE4R1rm3jo_CqqXDfDs4IQNM.INSTANCE).showOnBuild(true);
        if (i2 != 0) {
            showOnBuild.setIconFont(i2);
        }
        this.f = showOnBuild.build();
    }

    public final void showErrorDialog(String str) {
        showInformativeDialog(this.f589a.getString(R.string.error), str, 0, true, (int) R.string.ic_font_server_error);
    }

    public final void showErrorDialog(Throwable th) {
        showErrorDialog(th.getMessage());
    }

    public final void showErrorDialog(int i) {
        showErrorDialog(this.f589a.getString(i));
    }

    public final void hideErrorDialog() {
        b bVar = this.f;
        if (bVar != null) {
            bVar.dismiss();
            this.f.cancel();
            this.f = null;
        }
    }

    public final void showNoInternetDialog() {
        this.c = new b.a(this.f589a).setIconFont(R.string.ic_font_no_internet).setDialogTitle((int) R.string.no_internet_connection).setDialogViewType(new g.a().setMessage(this.f589a.getString(R.string.network_connection)).build()).setPositiveButton((int) R.string.wifi, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                r.this.b(view);
            }
        }).setNegativeButton((int) R.string.cellular, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                r.this.a(view);
            }
        }).build();
        this.c.show();
    }

    public final void showNoInternetDialog(DialogInterface.OnDismissListener onDismissListener) {
        this.c = new b.a(this.f589a).setIconFont(R.string.ic_font_no_internet).setDialogTitle((int) R.string.no_internet_connection).setDialogViewType(new g.a().setMessage(this.f589a.getString(R.string.network_connection)).build()).setPositiveButton((int) R.string.wifi, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                r.this.b(view);
            }
        }).setNegativeButton((int) R.string.cellular, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                r.this.a(view);
            }
        }).build();
        this.c.setOnDismissListener(onDismissListener);
        this.c.show();
    }

    public final void dismissNoInternetDialog() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.dismiss();
            this.c.cancel();
        }
    }

    public final void showNoLocationDialog(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        b bVar = this.d;
        if (bVar == null || !bVar.isShowing()) {
            $$Lambda$r$e4ZHiksF0NK0wW6LAgf697_w_GE r0 = new View.OnClickListener(onClickListener) {
                private final /* synthetic */ View.OnClickListener f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    r.this.b(this.f$1, view);
                }
            };
            this.d = new b.a(this.f589a).setIcon(R.drawable.ic_location_dialog).setDialogTitle((int) R.string.gps_system).setDialogViewType(new g.a().setMessage(this.f589a.getString(R.string.system_need_gps)).build()).setPositiveButton((int) R.string.yes, (View.OnClickListener) r0).setNegativeButton((int) R.string.no, (View.OnClickListener) new View.OnClickListener(onClickListener2) {
                private final /* synthetic */ View.OnClickListener f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    r.this.a(this.f$1, view);
                }
            }).build();
            this.d.show();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View.OnClickListener onClickListener, View view) {
        onClickListener.onClick(view);
        dismissNoLocationDialog();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View.OnClickListener onClickListener, View view) {
        onClickListener.onClick(view);
        dismissNoLocationDialog();
    }

    public final void showNoLocationDialog(View.OnClickListener onClickListener) {
        b bVar = this.d;
        if (bVar == null || !bVar.isShowing()) {
            this.d = new b.a(this.f589a).setIcon(R.drawable.ic_location_dialog).setDialogTitle((int) R.string.gps_system).setDialogViewType(new g.a().setMessage(this.f589a.getString(R.string.system_need_gps)).build()).setPositiveButton((int) R.string.yes, onClickListener).setNegativeButton((int) R.string.no, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    r.this.c(view);
                }
            }).build();
            this.d.show();
        }
    }

    public final void showNoPermissionDialog(final View.OnClickListener onClickListener, final View.OnClickListener onClickListener2) {
        AnonymousClass1 r0 = new View.OnClickListener() {
            public final void onClick(View view) {
                onClickListener.onClick(view);
                r.this.dismissNoPermissionDialog();
            }
        };
        AnonymousClass2 r5 = new View.OnClickListener() {
            public final void onClick(View view) {
                onClickListener2.onClick(view);
                r.this.dismissNoPermissionDialog();
            }
        };
        b bVar = this.e;
        if (bVar == null || !bVar.isShowing()) {
            this.e = new b.a(this.f589a).setIcon(R.drawable.ic_location_dialog).setDialogTitle((int) R.string.gps_system).setDialogViewType(new g.a().setMessage(this.f589a.getString(R.string.system_need_gps)).build()).setPositiveButton((int) R.string.yes, (View.OnClickListener) r0).setNegativeButton((int) R.string.no, (View.OnClickListener) r5).build();
            this.e.show();
        }
    }

    /* access modifiers changed from: private */
    public void c(View view) {
        dismissNoLocationDialog();
    }

    public final void dismissNoLocationDialog() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.dismiss();
            this.d.cancel();
        }
    }

    public final void dismissNoPermissionDialog() {
        b bVar = this.e;
        if (bVar != null) {
            bVar.dismiss();
            this.e.cancel();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(View view) {
        try {
            dismissNoInternetDialog();
            this.f589a.startActivity(new Intent("android.settings.DATA_ROAMING_SETTINGS"));
        } catch (Exception e2) {
            e2.printStackTrace();
            a.logException(e2);
            try {
                this.f589a.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void b(View view) {
        try {
            dismissNoInternetDialog();
            this.f589a.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
        } catch (Exception e2) {
            e2.printStackTrace();
            a.logException(e2);
            a.logException(e2);
        }
    }
}
