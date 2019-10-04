.class final Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/BaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityResult"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final requestCode:I

.field public final resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;->requestCode:I

    .line 148
    iput p2, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;->resultCode:I

    .line 149
    iput-object p3, p0, Lcom/ebay/mobile/activities/BaseDialogFragment$ActivityResult;->intent:Landroid/content/Intent;

    return-void
.end method
