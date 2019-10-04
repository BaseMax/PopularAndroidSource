.class final Lcom/google/android/material/internal/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput p1, p0, Lcom/google/android/material/internal/g$e;->a:I

    .line 671
    iput p2, p0, Lcom/google/android/material/internal/g$e;->b:I

    return-void
.end method


# virtual methods
.method public final getPaddingBottom()I
    .locals 1

    .line 679
    iget v0, p0, Lcom/google/android/material/internal/g$e;->b:I

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 675
    iget v0, p0, Lcom/google/android/material/internal/g$e;->a:I

    return v0
.end method
