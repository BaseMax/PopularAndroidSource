.class public abstract Lcom/ebay/mobile/activities/SellingActivityModule_ContributeSellLandingFragmentInjector$SellLandingFragmentSubcomponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "SellingActivityModule_ContributeSellLandingFragmentInjector.java"


# annotations
.annotation build Ldagger/Subcomponent$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/SellingActivityModule_ContributeSellLandingFragmentInjector$SellLandingFragmentSubcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/ebay/mobile/sellerlandingexperience/SellLandingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    return-void
.end method
