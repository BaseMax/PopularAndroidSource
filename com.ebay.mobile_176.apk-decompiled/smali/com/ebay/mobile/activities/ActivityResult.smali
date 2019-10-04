.class public final Lcom/ebay/mobile/activities/ActivityResult;
.super Ljava/lang/Object;
.source "ActivityResult.java"


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final requestCode:I

.field public final resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    .line 14
    iput p2, p0, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    .line 15
    iput-object p3, p0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    return-void
.end method
