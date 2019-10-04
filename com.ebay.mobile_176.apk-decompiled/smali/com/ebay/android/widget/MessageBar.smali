.class public Lcom/ebay/android/widget/MessageBar;
.super Landroid/widget/RelativeLayout;
.source "MessageBar.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private error:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/ebay/android/widget/MessageBar;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010106

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ebay/android/widget/MessageBar;->error:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/ebay/android/widget/MessageBar;->error:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 49
    iget-boolean v0, p0, Lcom/ebay/android/widget/MessageBar;->error:Z

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/ebay/android/widget/MessageBar;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/ebay/android/widget/MessageBar;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setError(Z)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/ebay/android/widget/MessageBar;->error:Z

    if-eq v0, p1, :cond_0

    .line 63
    iput-boolean p1, p0, Lcom/ebay/android/widget/MessageBar;->error:Z

    .line 64
    invoke-virtual {p0}, Lcom/ebay/android/widget/MessageBar;->refreshDrawableState()V

    :cond_0
    return-void
.end method
