.class public Lcom/crashlytics/android/core/CrashlyticsCore$3;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsCore;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$3;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5

    const-string v0, "CrashlyticsCore"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$3;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$100(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/CrashlyticsFileMarker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsFileMarker;->remove()Z

    move-result v1

    .line 3
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialization marker file removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Le/a/a/a/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v2

    const-string v3, "Problem encountered deleting Crashlytics initialization marker."

    invoke-interface {v2, v0, v3, v1}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
