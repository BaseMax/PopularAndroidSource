.class public final Lcab/snapp/passenger/f/b/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcab/snapp/passenger/f/b/c/a<",
        "Lcab/snapp/passenger/f/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandlerForEvent(Lcab/snapp/passenger/f/b/a/a;)Lcab/snapp/passenger/f/b/c/c;
    .locals 1

    .line 45
    new-instance v0, Lcab/snapp/passenger/f/b/d/a$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/b/d/a$1;-><init>(Lcab/snapp/passenger/f/b/d/a;Lcab/snapp/passenger/f/b/a/a;)V

    return-object v0
.end method

.method public final bridge synthetic getHandlerForEvent(Lcab/snapp/passenger/f/b/c/b;)Lcab/snapp/passenger/f/b/c/c;
    .locals 0

    .line 23
    check-cast p1, Lcab/snapp/passenger/f/b/a/a;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/b/d/a;->getHandlerForEvent(Lcab/snapp/passenger/f/b/a/a;)Lcab/snapp/passenger/f/b/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final init(Landroid/app/Application;Lcom/adjust/sdk/AdjustConfig;)Lcab/snapp/passenger/f/b/d/a;
    .locals 1

    .line 35
    new-instance v0, Lcab/snapp/passenger/f/b/b/a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/a;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 36
    invoke-static {p2}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    return-object p0
.end method
