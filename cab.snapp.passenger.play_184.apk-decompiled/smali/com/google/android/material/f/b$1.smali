.class final Lcom/google/android/material/f/b$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/f/b;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic c:Lcom/google/android/material/f/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/f/b;Landroid/text/TextPaint;Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/android/material/f/b$1;->c:Lcom/google/android/material/f/b;

    iput-object p2, p0, Lcom/google/android/material/f/b$1;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/google/android/material/f/b$1;->b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->c:Lcom/google/android/material/f/b;

    .line 3045
    invoke-virtual {v0}, Lcom/google/android/material/f/b;->a()V

    .line 179
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->c:Lcom/google/android/material/f/b;

    const/4 v1, 0x1

    .line 4045
    iput-boolean v1, v0, Lcom/google/android/material/f/b;->a:Z

    .line 180
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->c:Lcom/google/android/material/f/b;

    iget v1, v0, Lcom/google/android/material/f/b;->textStyle:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1045
    iput-object v1, v0, Lcom/google/android/material/f/b;->b:Landroid/graphics/Typeface;

    .line 171
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->c:Lcom/google/android/material/f/b;

    iget-object v1, p0, Lcom/google/android/material/f/b$1;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/f/b;->updateTextPaintMeasureState(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->c:Lcom/google/android/material/f/b;

    const/4 v1, 0x1

    .line 2045
    iput-boolean v1, v0, Lcom/google/android/material/f/b;->a:Z

    .line 173
    iget-object v0, p0, Lcom/google/android/material/f/b$1;->b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
