.class public final Lc/e/a/b/h/b/gb;
.super Lc/e/a/b/h/b/zb;


# instance fields
.field public final c:Lc/e/a/b/h/b/xb;

.field public d:Lc/e/a/b/h/b/l;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lc/e/a/b/h/b/c;

.field public final g:Lc/e/a/b/h/b/Ob;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lc/e/a/b/h/b/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/zb;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/h/b/gb;->h:Ljava/util/List;

    .line 3
    new-instance v0, Lc/e/a/b/h/b/Ob;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/e/a/b/h/b/Ob;-><init>(Lc/e/a/b/d/g/e;)V

    iput-object v0, p0, Lc/e/a/b/h/b/gb;->g:Lc/e/a/b/h/b/Ob;

    .line 4
    new-instance v0, Lc/e/a/b/h/b/xb;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/xb;-><init>(Lc/e/a/b/h/b/gb;)V

    iput-object v0, p0, Lc/e/a/b/h/b/gb;->c:Lc/e/a/b/h/b/xb;

    .line 5
    new-instance v0, Lc/e/a/b/h/b/hb;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/hb;-><init>(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/wa;)V

    iput-object v0, p0, Lc/e/a/b/h/b/gb;->f:Lc/e/a/b/h/b/c;

    .line 6
    new-instance v0, Lc/e/a/b/h/b/pb;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/pb;-><init>(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/wa;)V

    iput-object v0, p0, Lc/e/a/b/h/b/gb;->i:Lc/e/a/b/h/b/c;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/l;)Lc/e/a/b/h/b/l;
    .locals 0

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    return-object p1
.end method

.method public static synthetic a(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/xb;
    .locals 0

    .line 96
    iget-object p0, p0, Lc/e/a/b/h/b/gb;->c:Lc/e/a/b/h/b/xb;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/h/b/gb;Landroid/content/ComponentName;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/gb;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/h/b/gb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->L()V

    return-void
.end method

.method public static synthetic c(Lc/e/a/b/h/b/gb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->K()V

    return-void
.end method

.method public static synthetic d(Lc/e/a/b/h/b/gb;)Lc/e/a/b/h/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    return-object p0
.end method

.method public static synthetic e(Lc/e/a/b/h/b/gb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->H()V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->c:Lc/e/a/b/h/b/xb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/xb;->a()V

    .line 4
    :try_start_0
    invoke-static {}, Lc/e/a/b/d/f/a;->a()Lc/e/a/b/d/f/a;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/h/b/gb;->c:Lc/e/a/b/h/b/xb;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/d/f/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    return-void
.end method

.method public final C()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->j()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->t()Lc/e/a/b/h/b/p;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/p;->C()V

    .line 7
    :cond_0
    new-instance v1, Lc/e/a/b/h/b/jb;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/h/b/jb;-><init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 4
    new-instance v1, Lc/e/a/b/h/b/mb;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/h/b/mb;-><init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 4
    new-instance v1, Lc/e/a/b/h/b/qb;

    invoke-direct {v1, p0, v0}, Lc/e/a/b/h/b/qb;-><init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const/4 v0, 0x1

    return v0
.end method

.method public final H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->g:Lc/e/a/b/h/b/Ob;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Ob;->b()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->f:Lc/e/a/b/h/b/c;

    .line 4
    sget-object v1, Lc/e/a/b/h/b/k;->U:Lc/e/a/b/h/b/k$a;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/c;->a(J)V

    return-void
.end method

.method public final I()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->e:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/F;->w()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_6

    .line 9
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->G()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_5

    .line 11
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    const v3, 0xbdfcb8

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/cc;->a(I)I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    const/16 v3, 0x12

    if-eq v0, v3, :cond_4

    .line 13
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "Unexpected service status"

    invoke-virtual {v3, v4, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 14
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/cc;->w()I

    move-result v0

    const/16 v3, 0x3a98

    if-ge v0, v3, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/F;->w()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 22
    :cond_b
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_5
    if-nez v0, :cond_c

    .line 23
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/pc;->w()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    const-string v4, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_c
    if-eqz v3, :cond_d

    .line 25
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/e/a/b/h/b/F;->b(Z)V

    .line 26
    :cond_d
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/gb;->e:Ljava/lang/Boolean;

    .line 27
    :cond_e
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 28
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->c:Lc/e/a/b/h/b/xb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/xb;->b()V

    return-void

    .line 29
    :cond_f
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->w()Z

    move-result v0

    if-nez v0, :cond_12

    .line 30
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 31
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 33
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_11

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v1, Landroid/content/ComponentName;

    .line 37
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 39
    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lc/e/a/b/h/b/gb;->c:Lc/e/a/b/h/b/xb;

    invoke-virtual {v1, v0}, Lc/e/a/b/h/b/xb;->a(Landroid/content/Intent;)V

    return-void

    .line 42
    :cond_11
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 44
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public final J()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->B()V

    return-void
.end method

.method public final L()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/gb;->h:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->i:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    return-void
.end method

.method public final a(Z)Lcom/google/android/gms/measurement/internal/zzm;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 89
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->D()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/o;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/ComponentName;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 75
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    .line 77
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 79
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->I()V

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/b/g/f/fd;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 63
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 65
    new-instance v1, Lc/e/a/b/h/b/lb;

    invoke-direct {v1, p0, v0, p1}, Lc/e/a/b/h/b/lb;-><init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzm;Lc/e/a/b/g/f/fd;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/fd;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 91
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 92
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/cc;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Lc/e/a/b/h/b/cc;->a(Lc/e/a/b/g/f/fd;[B)V

    return-void

    .line 95
    :cond_0
    new-instance v0, Lc/e/a/b/h/b/ob;

    invoke-direct {v0, p0, p2, p3, p1}, Lc/e/a/b/h/b/ob;-><init>(Lc/e/a/b/h/b/gb;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;Lc/e/a/b/g/f/fd;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/fd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 40
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 41
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v5

    .line 43
    new-instance v0, Lc/e/a/b/h/b/ub;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lc/e/a/b/h/b/ub;-><init>(Lc/e/a/b/h/b/gb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;Lc/e/a/b/g/f/fd;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lc/e/a/b/g/f/fd;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 48
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 49
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v6

    .line 51
    new-instance v0, Lc/e/a/b/h/b/wb;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lc/e/a/b/h/b/wb;-><init>(Lc/e/a/b/h/b/gb;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;Lc/e/a/b/g/f/fd;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/cb;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 67
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 68
    new-instance v0, Lc/e/a/b/h/b/nb;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/nb;-><init>(Lc/e/a/b/h/b/gb;Lc/e/a/b/h/b/cb;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/l;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 70
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lc/e/a/b/h/b/gb;->d:Lc/e/a/b/h/b/l;

    .line 72
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->H()V

    .line 73
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->L()V

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/l;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->j()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->G()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    :goto_0
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_6

    if-ne v4, v2, :cond_6

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->t()Lc/e/a/b/h/b/p;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc/e/a/b/h/b/p;->a(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v5, v2, :cond_1

    .line 9
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 11
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v9, :cond_2

    .line 12
    :try_start_0
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-interface {p1, v8, p3}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 13
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v9

    invoke-virtual {v9}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    invoke-virtual {v9, v10, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_2
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzga;

    if-eqz v9, :cond_3

    .line 15
    :try_start_1
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-interface {p1, v8, p3}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 16
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v9

    invoke-virtual {v9}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    invoke-virtual {v9, v10, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_3
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzr;

    if-eqz v9, :cond_4

    .line 18
    :try_start_2
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-interface {p1, v8, p3}, Lc/e/a/b/h/b/l;->a(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    .line 19
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v9

    invoke-virtual {v9}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    invoke-virtual {v9, v10, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v8

    invoke-virtual {v8}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V
    .locals 8

    .line 21
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 23
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->G()Z

    move-result v2

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->t()Lc/e/a/b/h/b/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/e/a/b/h/b/p;->a(Lcom/google/android/gms/measurement/internal/zzaj;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v5

    .line 27
    new-instance v7, Lc/e/a/b/h/b/rb;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lc/e/a/b/h/b/rb;-><init>(Lc/e/a/b/h/b/gb;ZZLcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzga;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 54
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->G()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->t()Lc/e/a/b/h/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/p;->a(Lcom/google/android/gms/measurement/internal/zzga;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v1

    .line 57
    new-instance v2, Lc/e/a/b/h/b/ib;

    invoke-direct {v2, p0, v0, p1, v1}, Lc/e/a/b/h/b/ib;-><init>(Lc/e/a/b/h/b/gb;ZLcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v2}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 9

    .line 28
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 30
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 31
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    .line 32
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->t()Lc/e/a/b/h/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/p;->a(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 33
    :goto_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 34
    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v7

    .line 35
    new-instance v0, Lc/e/a/b/h/b/sb;

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lc/e/a/b/h/b/sb;-><init>(Lc/e/a/b/h/b/gb;ZZLcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 5

    .line 80
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 81
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 84
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/gb;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lc/e/a/b/h/b/gb;->i:Lc/e/a/b/h/b/c;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/h/b/c;->a(J)V

    .line 87
    invoke-virtual {p0}, Lc/e/a/b/h/b/gb;->I()V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 59
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 61
    new-instance v1, Lc/e/a/b/h/b/kb;

    invoke-direct {v1, p0, p1, v0}, Lc/e/a/b/h/b/kb;-><init>(Lc/e/a/b/h/b/gb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v1}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzr;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 37
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v7

    .line 39
    new-instance v0, Lc/e/a/b/h/b/tb;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lc/e/a/b/h/b/tb;-><init>(Lc/e/a/b/h/b/gb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzga;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 45
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v8

    .line 47
    new-instance v0, Lc/e/a/b/h/b/vb;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lc/e/a/b/h/b/vb;-><init>(Lc/e/a/b/h/b/gb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/gb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
