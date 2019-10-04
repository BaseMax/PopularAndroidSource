.class final Lio/fabric/sdk/android/c$1;
.super Lio/fabric/sdk/android/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/c;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lio/fabric/sdk/android/c$1;->a:Lio/fabric/sdk/android/c;

    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 370
    iget-object p2, p0, Lio/fabric/sdk/android/c$1;->a:Lio/fabric/sdk/android/c;

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/c;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/c;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lio/fabric/sdk/android/c$1;->a:Lio/fabric/sdk/android/c;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/c;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/c;

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lio/fabric/sdk/android/c$1;->a:Lio/fabric/sdk/android/c;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/c;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/c;

    return-void
.end method
