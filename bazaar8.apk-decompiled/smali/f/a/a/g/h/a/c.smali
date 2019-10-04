.class public Lf/a/a/g/h/a/c;
.super Lf/a/a/g/h/a/b;
.source "SharedPrefPrefillSheet.java"


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lf/a/a/g/h/a/b;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    .line 7
    iput-object p1, p0, Lf/a/a/g/h/a/c;->c:Landroid/content/SharedPreferences;

    .line 8
    iput-object p2, p0, Lf/a/a/g/h/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lf/a/a/g/h/a/b;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/h/a/b;-><init>(Lf/a/a/g/h/a/b;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    .line 3
    iput-object p2, p0, Lf/a/a/g/h/a/c;->c:Landroid/content/SharedPreferences;

    .line 4
    iput-object p3, p0, Lf/a/a/g/h/a/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lf/a/a/g/h/a/c;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/h/a/c;->d()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/h/a/c;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/h/a/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/g/h/a/c;->d:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lf/a/a/g/h/a/c;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lf/a/a/g/h/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/a/a/g/h/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
