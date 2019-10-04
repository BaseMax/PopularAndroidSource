.class final Lcom/google/android/material/chip/a$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/chip/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/a;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/android/material/chip/a$1;->a:Lcom/google/android/material/chip/a;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 0

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/google/android/material/chip/a$1;->a:Lcom/google/android/material/chip/a;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a;)Z

    .line 182
    iget-object p1, p0, Lcom/google/android/material/chip/a$1;->a:Lcom/google/android/material/chip/a;

    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->a()V

    .line 183
    iget-object p1, p0, Lcom/google/android/material/chip/a$1;->a:Lcom/google/android/material/chip/a;

    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    return-void
.end method
