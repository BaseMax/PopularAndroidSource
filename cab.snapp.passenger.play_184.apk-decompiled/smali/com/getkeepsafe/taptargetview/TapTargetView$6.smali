.class final Lcom/getkeepsafe/taptargetview/TapTargetView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/taptargetview/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$6;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(F)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$6;->a:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->ag:Lcom/getkeepsafe/taptargetview/a$b;

    invoke-interface {v0, p1}, Lcom/getkeepsafe/taptargetview/a$b;->onUpdate(F)V

    return-void
.end method
