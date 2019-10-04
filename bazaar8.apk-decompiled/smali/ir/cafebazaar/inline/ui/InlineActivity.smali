.class public Lir/cafebazaar/inline/ui/InlineActivity;
.super Lb/o/a/i;
.source "InlineActivity.java"

# interfaces
.implements Lf/a/a/e/g;


# static fields
.field public static q:Ljava/lang/String; = ""


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lf/a/a/c/a;

.field public r:Lf/a/a/e/m;

.field public s:Lir/cafebazaar/inline/platform/InlineApplication;

.field public t:Lf/a/a/g/d/d;

.field public u:Lf/a/a/g/h/b;

.field public v:Lf/a/a/g/d/a/c;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/o/a/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 3
    new-instance v0, Lf/a/a/g/d/d;

    invoke-direct {v0, p0}, Lf/a/a/g/d/d;-><init>(Lf/a/a/e/g;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->t:Lf/a/a/g/d/d;

    .line 4
    new-instance v0, Lf/a/a/g/d/a/c;

    invoke-direct {v0, p0}, Lf/a/a/g/d/a/c;-><init>(Lf/a/a/e/g;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->v:Lf/a/a/g/d/a/c;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->w:Z

    .line 6
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->y:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->B:Z

    .line 8
    sget-object v0, Lf/a/a/b/a;->a:Lf/a/a/c/a;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->C:Lf/a/a/c/a;

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/InlineActivity;Lir/cafebazaar/inline/platform/InlineApplication;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Lir/cafebazaar/inline/platform/InlineApplication;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inline://run?pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.RUN"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "open_from_bazaar"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x18000000

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 4
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inline://run?pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pt"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "android.intent.action.RUN"

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lir/cafebazaar/inline/platform/InlineApplication;)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/c/b;->a(Landroid/content/Context;)Lf/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/c/b;->a(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 4
    new-instance p1, Lf/a/a/g/h/b;

    invoke-direct {p1, p0}, Lf/a/a/g/h/b;-><init>(Lf/a/a/e/g;)V

    iput-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->u:Lf/a/a/g/h/b;

    .line 5
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {p1, p0}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lf/a/a/e/g;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "pt"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->t:Lf/a/a/g/d/d;

    .line 8
    invoke-virtual {p1}, Lf/a/a/g/d/d;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->A:Z

    .line 10
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "InlineApp"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "restart"

    const-string v3, "false"

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const v2, 0x18965

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v1, v4, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    iget-object v3, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 13
    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v3

    const-string v5, "packagename"

    invoke-virtual {v1, v5, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "start_path"

    .line 14
    invoke-virtual {v1, v3, p1}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 15
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 16
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/a/a;

    invoke-direct {v1}, Lf/a/a/a/a/a;-><init>()V

    const-string v3, "user"

    .line 17
    invoke-virtual {v1, v3}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 18
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lf/a/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lf/a/a/a/a/a;->d(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    const-string v3, "inlineapp_action"

    .line 20
    invoke-virtual {v1, v3}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v3, "action"

    const-string v5, "run"

    .line 21
    invoke-virtual {v1, v3, v5}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    iget-object v3, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 22
    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v3

    const-string v5, "package_name"

    invoke-virtual {v1, v5, v3}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    const-string v2, "path"

    .line 24
    invoke-virtual {v1, v2, p1}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 25
    invoke-virtual {v0, v1}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "key"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 32
    :cond_1
    new-instance v1, Lf/a/a/c/b/b;

    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    iget-object v3, p0, Lir/cafebazaar/inline/ui/InlineActivity;->x:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v0, v3}, Lf/a/a/c/b/b;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v0, Lf/a/a/e/f;

    .line 33
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lf/a/a/e/f;-><init>(Lir/cafebazaar/inline/ui/InlineActivity;Lf/a/a/e/g;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lf/a/a/c/b/b;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "exit_token"

    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->finish()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 38
    iget-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->A:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/a/a;

    invoke-direct {v1}, Lf/a/a/a/a/a;-><init>()V

    const-string v2, "user"

    .line 40
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 41
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lf/a/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->d(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    const-string v2, "inlineapp_action"

    .line 43
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "action"

    const-string v3, "close"

    .line 44
    invoke-virtual {v1, v2, v3}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    iget-object v2, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 45
    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    const v2, 0x18965

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    .line 47
    invoke-virtual {v0, v1}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->A:Z

    :cond_0
    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->h()Lf/a/a/g/i/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->h()Lf/a/a/g/i/f;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/i/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    new-instance p1, Lf/a/a/g/i/e;

    invoke-direct {p1, p0}, Lf/a/a/g/i/e;-><init>(Lf/a/a/e/g;)V

    .line 53
    invoke-virtual {p1}, Lf/a/a/g/c;->f()V

    goto :goto_0

    .line 54
    :cond_1
    iget-boolean p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->z:Z

    if-nez p1, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.farsitel.bazaar"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v0, 0x4000000

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 58
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 60
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public f()Lir/cafebazaar/inline/ui/InlineActivity;
    .locals 0

    return-object p0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Z)V

    return-void
.end method

.method public g()Lir/cafebazaar/inline/ui/Theme;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->i()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    return-object v0
.end method

.method public h()Lir/cafebazaar/inline/platform/InlineApplication;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    return-object v0
.end method

.method public j()Lf/a/a/a/b/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->a()Lf/a/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Lf/a/a/e/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/o/a/i;->r()Lb/o/a/n;

    move-result-object v0

    sget v1, Lf/a/a/e;->container:I

    invoke-virtual {v0, v1}, Lb/o/a/n;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lf/a/a/e/l;

    if-eqz v1, :cond_0

    check-cast v0, Lf/a/a/e/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb/o/a/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lf/a/a/g/d/a/c;->a(Lf/a/a/e/g;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lf/a/a/g/f/a/b;->a(Lf/a/a/e/g;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Lf/a/a/e/g;IILandroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->k()Lf/a/a/e/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/a/a/e/l;->La()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->t:Lf/a/a/g/d/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/a/g/d/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-super {p0}, Lb/a/c;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lb/o/a/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget v0, Lf/a/a/f;->inline_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "open_from_bazaar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->z:Z

    const/4 v0, 0x1

    const-string v2, "restart"

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const-string v1, "app"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lir/cafebazaar/inline/platform/InlineApplication;

    iput-object v1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 6
    new-instance v1, Lf/a/a/g/h/b;

    invoke-direct {v1, p0}, Lf/a/a/g/h/b;-><init>(Lf/a/a/e/g;)V

    iput-object v1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->u:Lf/a/a/g/h/b;

    .line 7
    iget-object v1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->t:Lf/a/a/g/d/d;

    const-string v3, "backstack"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lf/a/a/g/d/d;->a(Landroid/os/Bundle;)V

    .line 8
    iget-object v1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->v:Lf/a/a/g/d/a/c;

    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lf/a/a/g/d/a/c;->a(Landroid/os/Bundle;)V

    .line 9
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v3, "InlineApp"

    invoke-direct {v1, v3}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "true"

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const v2, 0x18965

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    iget-object v2, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 12
    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packagename"

    invoke-virtual {v1, v3, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 13
    invoke-virtual {p1, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 14
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->A:Z

    .line 15
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {p1, p0}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lf/a/a/e/g;)V

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Lf/a/a/e/m;

    invoke-direct {p1, p0}, Lf/a/a/e/m;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->r:Lf/a/a/e/m;

    .line 17
    iget-object p1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->r:Lf/a/a/e/m;

    new-instance v0, Lf/a/a/e/d;

    invoke-direct {v0, p0}, Lf/a/a/e/d;-><init>(Lir/cafebazaar/inline/ui/InlineActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "pn"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->x:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kamane.cafebazaar.ir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "kamane"

    .line 22
    iput-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->x:Ljava/lang/String;

    .line 23
    :cond_3
    :goto_0
    new-instance v0, Lf/a/a/c/a/b;

    invoke-direct {v0, p1}, Lf/a/a/c/a/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lf/a/a/e/e;

    invoke-direct {v1, p0, p1}, Lf/a/a/e/e;-><init>(Lir/cafebazaar/inline/ui/InlineActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/a/a/c/a/b;->a(Lf/a/a/c/e;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onDestroy()V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->b()Lf/a/a/g/f/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/f/a/b;->a()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->y:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->w:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lir/cafebazaar/inline/ui/InlineActivity;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Lf/a/a/e/g;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->w:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "restart"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    const-string v1, "app"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->t:Lf/a/a/g/d/d;

    invoke-virtual {v1, v0}, Lf/a/a/g/d/d;->b(Landroid/os/Bundle;)V

    const-string v1, "backstack"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v1, p0, Lir/cafebazaar/inline/ui/InlineActivity;->v:Lf/a/a/g/d/a/c;

    invoke-virtual {v1, v0}, Lf/a/a/g/d/a/c;->b(Landroid/os/Bundle;)V

    const-string v1, "action"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onStart()V

    .line 2
    iget-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->B:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/a/a;

    invoke-direct {v1}, Lf/a/a/a/a/a;-><init>()V

    iget-object v2, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 4
    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineUser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->d(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "user"

    .line 5
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "maximize"

    .line 6
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "inline"

    .line 7
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 8
    invoke-virtual {v0, v1}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->B:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lb/o/a/i;->onStop()V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/a/a;

    invoke-direct {v1}, Lf/a/a/a/a/a;-><init>()V

    iget-object v2, p0, Lir/cafebazaar/inline/ui/InlineActivity;->s:Lir/cafebazaar/inline/platform/InlineApplication;

    .line 4
    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineUser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->d(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "user"

    .line 5
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "minimize"

    .line 6
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "inline"

    .line 7
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 8
    invoke-virtual {v0, v1}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    :cond_0
    return-void
.end method

.method public v()Lf/a/a/g/d/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->v:Lf/a/a/g/d/a/c;

    return-object v0
.end method

.method public w()Lf/a/a/g/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->t:Lf/a/a/g/d/d;

    return-object v0
.end method

.method public x()Lf/a/a/g/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->u:Lf/a/a/g/h/b;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lir/cafebazaar/inline/ui/InlineActivity;->w:Z

    return v0
.end method
