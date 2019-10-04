.class public final Lcom/google/android/material/snackbar/Snackbar$a;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$a<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 105
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar$a;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public final onShown(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/Snackbar$a;->onShown(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method
