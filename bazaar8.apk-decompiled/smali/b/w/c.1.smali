.class public Lb/w/c;
.super Lb/w/K;
.source "ActivityNavigator.java"


# annotations
.annotation runtime Lb/w/K$b;
    value = "activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/w/c$b;,
        Lb/w/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/w/K<",
        "Lb/w/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/w/K;-><init>()V

    .line 2
    iput-object p1, p0, Lb/w/c;->a:Landroid/content/Context;

    .line 3
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lb/w/c;->b:Landroid/app/Activity;

    goto :goto_1

    .line 6
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lb/w/c$a;
    .locals 1

    .line 3
    new-instance v0, Lb/w/c$a;

    invoke-direct {v0, p0}, Lb/w/c$a;-><init>(Lb/w/K;)V

    return-object v0
.end method

.method public bridge synthetic a()Lb/w/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/w/c;->a()Lb/w/c$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/w/c$a;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 6

    .line 4
    invoke-virtual {p1}, Lb/w/c$a;->h()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lb/w/c$a;->h()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Lb/w/c$a;->g()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\\{(.+?)\\}"

    .line 10
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 12
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    .line 15
    invoke-virtual {v3, v2, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 16
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not find "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to fill data pattern "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    :cond_2
    instance-of p2, p4, Lb/w/c$b;

    if-eqz p2, :cond_3

    .line 21
    move-object v1, p4

    check-cast v1, Lb/w/c$b;

    .line 22
    invoke-virtual {v1}, Lb/w/c$b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    :cond_3
    iget-object v1, p0, Lb/w/c;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_4

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    if-eqz p3, :cond_5

    .line 25
    invoke-virtual {p3}, Lb/w/w;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x20000000

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    :cond_5
    iget-object v1, p0, Lb/w/c;->b:Landroid/app/Activity;

    const-string v2, "android-support-navigation:ActivityNavigator:current"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    const-string v4, "android-support-navigation:ActivityNavigator:source"

    .line 30
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    :cond_6
    invoke-virtual {p1}, Lb/w/o;->d()I

    move-result p1

    .line 32
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_7

    .line 33
    invoke-virtual {p3}, Lb/w/w;->c()I

    move-result p1

    const-string v1, "android-support-navigation:ActivityNavigator:popEnterAnim"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p3}, Lb/w/w;->d()I

    move-result p1

    const-string v1, "android-support-navigation:ActivityNavigator:popExitAnim"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    const/4 p1, 0x0

    if-eqz p2, :cond_9

    .line 35
    check-cast p4, Lb/w/c$b;

    .line 36
    invoke-virtual {p4}, Lb/w/c$b;->a()Lb/i/a/d;

    move-result-object p2

    if-nez p2, :cond_8

    .line 37
    iget-object p2, p0, Lb/w/c;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 38
    :cond_8
    iget-object p3, p0, Lb/w/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lb/i/a/d;->a()Landroid/os/Bundle;

    throw p1

    .line 39
    :cond_9
    iget-object p2, p0, Lb/w/c;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    if-eqz p3, :cond_d

    .line 40
    iget-object p2, p0, Lb/w/c;->b:Landroid/app/Activity;

    if-eqz p2, :cond_d

    .line 41
    invoke-virtual {p3}, Lb/w/w;->a()I

    move-result p2

    .line 42
    invoke-virtual {p3}, Lb/w/w;->b()I

    move-result p3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_a

    if-eq p3, p4, :cond_d

    :cond_a
    if-eq p2, p4, :cond_b

    goto :goto_2

    :cond_b
    const/4 p2, 0x0

    :goto_2
    if-eq p3, p4, :cond_c

    goto :goto_3

    :cond_c
    const/4 p3, 0x0

    .line 43
    :goto_3
    iget-object p4, p0, Lb/w/c;->b:Landroid/app/Activity;

    invoke-virtual {p4, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_d
    return-object p1

    .line 44
    :cond_e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Destination "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/w/o;->d()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have an Intent set."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public bridge synthetic a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;
    .locals 0

    .line 2
    check-cast p1, Lb/w/c$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/w/c;->a(Lb/w/c$a;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/c;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
