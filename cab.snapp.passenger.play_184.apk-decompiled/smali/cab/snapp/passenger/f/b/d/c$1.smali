.class final Lcab/snapp/passenger/f/b/d/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/f/b/d/c;->getHandlerForEvent(Lcab/snapp/passenger/f/b/a/d;)Lcab/snapp/passenger/f/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/f/b/a/d;

.field final synthetic b:Lcab/snapp/passenger/f/b/d/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/f/b/d/c;Lcab/snapp/passenger/f/b/a/d;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcab/snapp/passenger/f/b/d/c$1;->b:Lcab/snapp/passenger/f/b/d/c;

    iput-object p2, p0, Lcab/snapp/passenger/f/b/d/c$1;->a:Lcab/snapp/passenger/f/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendEvent()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/f/b/d/c$1;->b:Lcab/snapp/passenger/f/b/d/c;

    .line 1021
    iget-object v0, v0, Lcab/snapp/passenger/f/b/d/c;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 75
    iget-object v1, p0, Lcab/snapp/passenger/f/b/d/c$1;->a:Lcab/snapp/passenger/f/b/a/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/a/d;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/b/d/c$1;->a:Lcab/snapp/passenger/f/b/a/d;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/a/d;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
