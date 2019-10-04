.class public Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x23

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    .line 37
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected drawGlyphBitmap(Ljava/lang/String;ZC)Landroid/graphics/Bitmap;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 57
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/text/LocalGlyphRasterizer;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
