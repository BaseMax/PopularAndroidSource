.class public Lf/a/a/g/h/b;
.super Ljava/lang/Object;
.source "PrefillManager.java"

# interfaces
.implements Lf/a/a/a/c/c;


# instance fields
.field public a:Lf/a/a/e/g;

.field public b:Lf/a/a/g/h/a/b;

.field public c:Lf/a/a/g/h/a/b;

.field public d:Lf/a/a/g/h/a/a;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/a/a/g/h/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/h/b;->a:Lf/a/a/e/g;

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "inline_prefill_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    new-instance v1, Lf/a/a/g/h/a/c;

    const-string v2, "global"

    invoke-direct {v1, v0, v2}, Lf/a/a/g/h/a/c;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v1, p0, Lf/a/a/g/h/b;->b:Lf/a/a/g/h/a/b;

    .line 5
    new-instance v1, Lf/a/a/g/h/a/c;

    iget-object v2, p0, Lf/a/a/g/h/b;->b:Lf/a/a/g/h/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lf/a/a/g/h/a/c;-><init>(Lf/a/a/g/h/a/b;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v1, p0, Lf/a/a/g/h/b;->c:Lf/a/a/g/h/a/b;

    .line 7
    new-instance p1, Lf/a/a/g/h/a/a;

    iget-object v0, p0, Lf/a/a/g/h/b;->c:Lf/a/a/g/h/a/b;

    invoke-direct {p1, v0}, Lf/a/a/g/h/a/a;-><init>(Lf/a/a/g/h/a/b;)V

    iput-object p1, p0, Lf/a/a/g/h/b;->d:Lf/a/a/g/h/a/a;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf/a/a/g/h/b;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lf/a/a/g/h/a/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/g/h/b;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf/a/a/g/h/b;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lf/a/a/g/h/b;->e:Ljava/util/Map;

    new-instance v2, Lf/a/a/g/h/a/a;

    iget-object v3, p0, Lf/a/a/g/h/b;->d:Lf/a/a/g/h/a/a;

    invoke-direct {v2, v3}, Lf/a/a/g/h/a/a;-><init>(Lf/a/a/g/h/a/b;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lf/a/a/g/h/b;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/h/a/b;

    return-object v0
.end method
