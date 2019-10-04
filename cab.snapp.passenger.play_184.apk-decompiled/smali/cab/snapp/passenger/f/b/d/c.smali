.class public final Lcab/snapp/passenger/f/b/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcab/snapp/passenger/f/b/c/a<",
        "Lcab/snapp/passenger/f/b/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandlerForEvent(Lcab/snapp/passenger/f/b/a/d;)Lcab/snapp/passenger/f/b/c/c;
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/f/b/d/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/b/d/c$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/b/d/c$1;-><init>(Lcab/snapp/passenger/f/b/d/c;Lcab/snapp/passenger/f/b/a/d;)V

    return-object v0
.end method

.method public final bridge synthetic getHandlerForEvent(Lcab/snapp/passenger/f/b/c/b;)Lcab/snapp/passenger/f/b/c/c;
    .locals 0

    .line 21
    check-cast p1, Lcab/snapp/passenger/f/b/a/d;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/b/d/c;->getHandlerForEvent(Lcab/snapp/passenger/f/b/a/d;)Lcab/snapp/passenger/f/b/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final init(Landroid/content/Context;)Lcab/snapp/passenger/f/b/d/c;
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/f/b/d/c;->b:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/f/b/d/c;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public final setScreen(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
