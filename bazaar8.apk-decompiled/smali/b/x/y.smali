.class public Lb/x/y;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/x/y$b;,
        Lb/x/y$a;,
        Lb/x/y$c;,
        Lb/x/y$d;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:J

.field public c:Landroid/content/SharedPreferences;

.field public d:Lb/x/n;

.field public e:Landroid/content/SharedPreferences$Editor;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Landroidx/preference/PreferenceScreen;

.field public k:Lb/x/y$d;

.field public l:Lb/x/y$c;

.field public m:Lb/x/y$a;

.field public n:Lb/x/y$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lb/x/y;->b:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/x/y;->i:I

    .line 4
    iput-object p1, p0, Lb/x/y;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lb/x/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/x/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 14
    iget-object v0, p0, Lb/x/y;->d:Lb/x/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 15
    :cond_0
    iget-boolean v0, p0, Lb/x/y;->f:Z

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lb/x/y;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lb/x/y;->e:Landroid/content/SharedPreferences$Editor;

    .line 18
    :cond_1
    iget-object v0, p0, Lb/x/y;->e:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    .line 12
    iget-object v0, p0, Lb/x/y;->j:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/x/y;->a(Z)V

    .line 2
    new-instance v0, Lb/x/x;

    invoke-direct {v0, p1, p0}, Lb/x/x;-><init>(Landroid/content/Context;Lb/x/y;)V

    .line 3
    invoke-virtual {v0, p2, p3}, Lb/x/x;->a(ILandroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 4
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->a(Lb/x/y;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Lb/x/y;->a(Z)V

    return-object p1
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lb/x/y;->m:Lb/x/y$a;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lb/x/y$a;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public a(Lb/x/y$a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lb/x/y;->m:Lb/x/y$a;

    return-void
.end method

.method public a(Lb/x/y$b;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lb/x/y;->n:Lb/x/y$b;

    return-void
.end method

.method public a(Lb/x/y$c;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lb/x/y;->l:Lb/x/y$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lb/x/y;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lb/x/y;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 20
    iget-object v0, p0, Lb/x/y;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    :cond_0
    iput-boolean p1, p0, Lb/x/y;->f:Z

    return-void
.end method

.method public a(Landroidx/preference/PreferenceScreen;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lb/x/y;->j:Landroidx/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->E()V

    .line 11
    :cond_0
    iput-object p1, p0, Lb/x/y;->j:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lb/x/y;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lb/x/y;->b:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lb/x/y$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/y;->n:Lb/x/y$b;

    return-object v0
.end method

.method public d()Lb/x/y$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/y;->l:Lb/x/y$c;

    return-object v0
.end method

.method public e()Lb/x/y$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/y;->k:Lb/x/y$d;

    return-object v0
.end method

.method public f()Lb/x/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/y;->d:Lb/x/n;

    return-object v0
.end method

.method public g()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/y;->j:Landroidx/preference/PreferenceScreen;

    return-object v0
.end method

.method public h()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/x/y;->f()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/x/y;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lb/x/y;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lb/x/y;->a:Landroid/content/Context;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lb/x/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/i/b/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Lb/x/y;->g:Ljava/lang/String;

    iget v2, p0, Lb/x/y;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lb/x/y;->c:Landroid/content/SharedPreferences;

    .line 7
    :cond_2
    iget-object v0, p0, Lb/x/y;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/x/y;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
