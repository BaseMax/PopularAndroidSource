.class public final Lcab/snapp/passenger/f/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroid/os/Handler;

.field public static instance:Lcab/snapp/passenger/f/o;


# instance fields
.field b:Ljava/lang/Runnable;

.field c:Ljava/lang/Runnable;

.field d:Ljava/lang/Runnable;

.field e:Ljava/lang/Runnable;

.field f:Ljava/lang/Runnable;

.field g:Ljava/lang/Runnable;

.field private h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

.field private i:Lcom/getkeepsafe/taptargetview/TapTargetView;

.field private j:Lcom/getkeepsafe/taptargetview/TapTargetView;

.field private k:Lcom/getkeepsafe/taptargetview/TapTargetView;

.field private l:Lcom/getkeepsafe/taptargetview/TapTargetView;

.field private m:Lcom/getkeepsafe/taptargetview/TapTargetView;

.field private n:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcab/snapp/passenger/f/o$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/f/o$1;-><init>(Lcab/snapp/passenger/f/o;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/graphics/Typeface;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v0, 0x7f090006

    .line 365
    invoke-static {p0, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 4

    .line 329
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 331
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/o;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 332
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getOuterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTargetCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/16 v2, 0x3c

    .line 334
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetRadius(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 335
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 336
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 337
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const v2, 0x106000c

    .line 339
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->dimColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 340
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 341
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->cancelable(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 329
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->n:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const-string v0, "show_case_online_payment"

    .line 344
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 1

    .line 355
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 356
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 4

    .line 299
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/o;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getOuterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 303
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTargetCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 306
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const v2, 0x106000c

    .line 308
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->dimColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 309
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->cancelable(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 311
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 299
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->m:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const-string v0, "show_case_ride_message_to_driver"

    .line 313
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance v1, Lcab/snapp/b/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v1, p1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v1, p0}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p0}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic c(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 4

    .line 270
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/o;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 273
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getOuterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 274
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTargetCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 275
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 277
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 278
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const v2, 0x106000c

    .line 279
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->dimColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 280
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->cancelable(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 270
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->l:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const-string v0, "show_case_ride_share"

    .line 284
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method private synthetic d(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 4

    .line 240
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 241
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 242
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/o;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getOuterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 244
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTargetCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 245
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 246
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 247
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const v2, 0x106000c

    .line 249
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->dimColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 250
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 251
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->cancelable(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 240
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->j:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const-string v0, "show_case_origin_pin"

    .line 254
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method private synthetic e(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 4

    .line 210
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/o;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 213
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getOuterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 214
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTargetCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const v2, 0x106000c

    .line 219
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->dimColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 220
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->cancelable(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 210
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->k:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const-string v0, "show_case_voice_search"

    .line 224
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method private synthetic f(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 4

    .line 179
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/o;->a(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getOuterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTargetCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getTitleTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->getDescTextSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const v2, 0x106000c

    .line 188
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->dimColor(I)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->cancelable(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v2}, Lcom/getkeepsafe/taptargetview/c;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 179
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/c;Lcom/getkeepsafe/taptargetview/TapTargetView$a;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->i:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const-string v0, "show_case_options"

    .line 194
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->a(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method public static synthetic lambda$2DA7u-EuUWlH6oKTJ-_e8i0w-og(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/o;->f(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method public static synthetic lambda$JRiE_L9u5mK-L6TzM3oNGCWGrvo(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/o;->c(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method public static synthetic lambda$JSoXURO_zrKQ_QueARTMRs28NQ4(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/o;->b(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method public static synthetic lambda$prJsdTVPryiOm8VdugiMgcRZS9U(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/o;->e(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method public static synthetic lambda$sRA1TCuMRbggQmAHfWDpVL9ksZc(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/o;->d(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method

.method public static synthetic lambda$ymmZBXlceEhXVTw-B_YCRoypY5U(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/f/o;->a(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    return-void
.end method


# virtual methods
.method public final cancelAll()V
    .locals 2

    .line 88
    sget-object v0, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    sget-object v0, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcab/snapp/passenger/f/o;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    sget-object v0, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcab/snapp/passenger/f/o;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    sget-object v0, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcab/snapp/passenger/f/o;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    sget-object v0, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcab/snapp/passenger/f/o;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->i:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->k:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->l:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    .line 109
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->m:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    .line 113
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->n:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->dismiss(Z)V

    .line 118
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    if-nez v0, :cond_6

    return-void

    .line 123
    :cond_6
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->i:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v1, :cond_7

    .line 125
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 127
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->j:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_8

    .line 129
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-virtual {v1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 131
    :cond_8
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->k:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_9

    .line 133
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-virtual {v1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 135
    :cond_9
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->l:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_a

    .line 137
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-virtual {v1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 139
    :cond_a
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->m:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_b

    .line 141
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-virtual {v1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    .line 143
    :cond_b
    iget-object v0, p0, Lcab/snapp/passenger/f/o;->n:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v0, :cond_c

    .line 145
    iget-object v1, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    invoke-virtual {v1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView$a;->onTargetClick(Lcom/getkeepsafe/taptargetview/TapTargetView;)V

    :cond_c
    const/4 v0, 0x0

    .line 1154
    sput-object v0, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    .line 1155
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->h:Lcom/getkeepsafe/taptargetview/TapTargetView$a;

    .line 1157
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->b:Ljava/lang/Runnable;

    .line 1158
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->g:Ljava/lang/Runnable;

    .line 1159
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->f:Ljava/lang/Runnable;

    .line 1160
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->c:Ljava/lang/Runnable;

    .line 1161
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->d:Ljava/lang/Runnable;

    .line 1163
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->i:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1164
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->j:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1165
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->k:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1166
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->l:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1167
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->m:Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1168
    iput-object v0, p0, Lcab/snapp/passenger/f/o;->n:Lcom/getkeepsafe/taptargetview/TapTargetView;

    return-void
.end method

.method public final showTapTargetForMessageToDriver(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const-string v0, "show_case_ride_message_to_driver"

    .line 296
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$o$JSoXURO_zrKQ_QueARTMRs28NQ4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$o$JSoXURO_zrKQ_QueARTMRs28NQ4;-><init>(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->f:Ljava/lang/Runnable;

    .line 316
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 317
    sput-object p1, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcab/snapp/passenger/f/o;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final showTapTargetForOriginPin(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const-string v0, "show_case_origin_pin"

    .line 237
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$o$sRA1TCuMRbggQmAHfWDpVL9ksZc;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$o$sRA1TCuMRbggQmAHfWDpVL9ksZc;-><init>(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->d:Ljava/lang/Runnable;

    .line 256
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 257
    sput-object p1, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcab/snapp/passenger/f/o;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final showTapTargetForPayment(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 3

    .line 324
    invoke-virtual {p0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const-string v0, "show_case_online_payment"

    .line 326
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$o$ymmZBXlceEhXVTw-B_YCRoypY5U;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$o$ymmZBXlceEhXVTw-B_YCRoypY5U;-><init>(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->g:Ljava/lang/Runnable;

    .line 347
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 348
    sput-object p1, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcab/snapp/passenger/f/o;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final showTapTargetForRideOptions(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const-string v0, "show_case_options"

    .line 176
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$o$2DA7u-EuUWlH6oKTJ-_e8i0w-og;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$o$2DA7u-EuUWlH6oKTJ-_e8i0w-og;-><init>(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->b:Ljava/lang/Runnable;

    .line 196
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 197
    sput-object p1, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcab/snapp/passenger/f/o;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final showTapTargetForRideShare(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const-string v0, "show_case_ride_share"

    .line 267
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$o$JRiE_L9u5mK-L6TzM3oNGCWGrvo;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$o$JRiE_L9u5mK-L6TzM3oNGCWGrvo;-><init>(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->e:Ljava/lang/Runnable;

    .line 286
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 287
    sput-object p1, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcab/snapp/passenger/f/o;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final showTapTargetForSearch(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const-string v0, "show_case_voice_search"

    .line 207
    invoke-static {v0, p1}, Lcab/snapp/passenger/f/o;->b(Ljava/lang/String;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcab/snapp/passenger/f/-$$Lambda$o$prJsdTVPryiOm8VdugiMgcRZS9U;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/f/-$$Lambda$o$prJsdTVPryiOm8VdugiMgcRZS9U;-><init>(Lcab/snapp/passenger/f/o;Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    iput-object v0, p0, Lcab/snapp/passenger/f/o;->c:Ljava/lang/Runnable;

    .line 226
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 227
    sput-object p1, Lcab/snapp/passenger/f/o;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcab/snapp/passenger/f/o;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
