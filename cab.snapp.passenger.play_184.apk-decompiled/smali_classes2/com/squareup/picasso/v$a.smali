.class final Lcom/squareup/picasso/v$a;
.super Lcom/squareup/picasso/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final p:[I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;Landroid/widget/RemoteViews;I[IIILjava/lang/String;Ljava/lang/Object;ILcom/squareup/picasso/e;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p10

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    move-object/from16 v10, p11

    .line 109
    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/v;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;Landroid/widget/RemoteViews;IIIILjava/lang/Object;Ljava/lang/String;Lcom/squareup/picasso/e;)V

    move-object/from16 v1, p5

    .line 111
    iput-object v1, v0, Lcom/squareup/picasso/v$a;->p:[I

    return-void
.end method


# virtual methods
.method final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/squareup/picasso/v;->c()Lcom/squareup/picasso/v$c;

    move-result-object v0

    return-object v0
.end method

.method final d()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/squareup/picasso/v$a;->a:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/squareup/picasso/v$a;->p:[I

    iget-object v2, p0, Lcom/squareup/picasso/v$a;->m:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method
