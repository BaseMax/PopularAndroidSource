.class public Lcab/snapp/snappuikit/SnappPlateNumberView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/SnappPlateNumberView$d;,
        Lcab/snapp/snappuikit/SnappPlateNumberView$c;,
        Lcab/snapp/snappuikit/SnappPlateNumberView$b;,
        Lcab/snapp/snappuikit/SnappPlateNumberView$e;,
        Lcab/snapp/snappuikit/SnappPlateNumberView$f;,
        Lcab/snapp/snappuikit/SnappPlateNumberView$g;,
        Lcab/snapp/snappuikit/SnappPlateNumberView$a;
    }
.end annotation


# static fields
.field public static final ZONE_ANZALI:I = 0x3eb

.field public static final ZONE_ANZALI_NEW:I = 0x7d3

.field public static final ZONE_ARAS:I = 0x3e9

.field public static final ZONE_ARAS_NEW:I = 0x7d1

.field public static final ZONE_ARVAND:I = 0x3ea

.field public static final ZONE_ARVAND_NEW:I = 0x7d2

.field public static final ZONE_CHABAHAR:I = 0x3ec

.field public static final ZONE_CHABAHAR_NEW:I = 0x7d4

.field public static final ZONE_DEFAULT:I = 0x1

.field public static final ZONE_GHESHM:I = 0x3ed

.field public static final ZONE_GHESHM_NEW:I = 0x7d5

.field public static final ZONE_KISH:I = 0x3ee

.field public static final ZONE_KISH_NEW:I = 0x7d6

.field public static final ZONE_MAKU:I = 0x3ef

.field public static final ZONE_MAKU_NEW:I = 0x7d7


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->a:I

    .line 43
    iput p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->b()V

    .line 175
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->c()V

    .line 176
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->d()V

    .line 177
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->e()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappPlateNumberView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->a()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappPlateNumberView;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setZoneType(I)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappPlateNumberView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setViewFrame(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappPlateNumberView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setSideNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappPlateNumberView;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setIsMotorcycle(Z)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 182
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 184
    iput v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    return-void

    .line 186
    :cond_0
    iget v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 188
    iput v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    return-void

    :cond_1
    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    .line 200
    iput v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x4

    .line 196
    iput v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    return-void

    :cond_5
    :goto_1
    const/4 v0, 0x3

    .line 192
    iput v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappuikit/SnappPlateNumberView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setMainNumber(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->removeAllViews()V

    .line 208
    iget v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    invoke-direct {v0, p0, v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$f;-><init>(Lcab/snapp/snappuikit/SnappPlateNumberView;B)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    .line 228
    sget v0, Lcab/snapp/snappuikit/a$g;->layout_plate_number_normal_car:I

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    invoke-direct {v0, p0, v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$b;-><init>(Lcab/snapp/snappuikit/SnappPlateNumberView;B)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    .line 220
    sget v0, Lcab/snapp/snappuikit/a$g;->layout_plate_number_free_zone_new:I

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    invoke-direct {v0, p0, v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$c;-><init>(Lcab/snapp/snappuikit/SnappPlateNumberView;B)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    .line 216
    sget v0, Lcab/snapp/snappuikit/a$g;->layout_plate_number_free_zone_old:I

    goto :goto_0

    .line 211
    :cond_2
    new-instance v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    invoke-direct {v0, p0, v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$d;-><init>(Lcab/snapp/snappuikit/SnappPlateNumberView;B)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    .line 212
    sget v0, Lcab/snapp/snappuikit/a$g;->layout_plate_number_free_zone_older:I

    goto :goto_0

    .line 223
    :cond_3
    new-instance v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    invoke-direct {v0, p0, v2}, Lcab/snapp/snappuikit/SnappPlateNumberView$e;-><init>(Lcab/snapp/snappuikit/SnappPlateNumberView;B)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    .line 224
    sget v0, Lcab/snapp/snappuikit/a$g;->layout_plate_number_motorcycle:I

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    .line 233
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 237
    :cond_4
    instance-of v3, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    if-eqz v3, :cond_5

    .line 239
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_normal_car_iran_id_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->d:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_normal_car_main_part_a_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->a:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_normal_car_main_character_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->c:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_normal_car_main_part_b_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->b:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 244
    :cond_5
    instance-of v3, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    if-eqz v3, :cond_6

    .line 246
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_motorcycle_side_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;->a:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_motorcycle_main_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;->b:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 249
    :cond_6
    instance-of v3, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    if-eqz v3, :cond_7

    .line 251
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_older_main_persian_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->b:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_older_main_english_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->c:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_older_side_iv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->a:Landroid/widget/ImageView;

    .line 254
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_older_horizontal_divider:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->d:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_older_vertical_divider:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->e:Landroid/view/View;

    goto/16 :goto_1

    .line 257
    :cond_7
    instance-of v3, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    if-eqz v3, :cond_8

    .line 259
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_old_main_persian_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;->b:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_old_main_english_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;->c:Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_old_side_iv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;->a:Landroid/widget/ImageView;

    goto :goto_1

    .line 263
    :cond_8
    instance-of v3, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    if-eqz v3, :cond_9

    .line 265
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_new_main_persian_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->d:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_new_main_english_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->e:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_new_side_persian_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->b:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_new_side_english_tv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->c:Landroid/widget/TextView;

    .line 269
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappuikit/a$f;->plate_number_free_zone_new_side_iv:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->a:Landroid/widget/ImageView;

    .line 272
    :cond_9
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 274
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method static synthetic c(Lcab/snapp/snappuikit/SnappPlateNumberView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setMainCharacter(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    instance-of v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    if-eqz v1, :cond_4

    .line 286
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 288
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->f:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->h:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 300
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$f;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->h:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 303
    :cond_4
    instance-of v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    if-eqz v1, :cond_6

    .line 305
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 307
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->h:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_5
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 311
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$e;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 314
    :cond_6
    instance-of v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    if-eqz v1, :cond_9

    .line 316
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 318
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_7
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 322
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_8
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getCorrectPlateSideImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->a:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_10

    .line 327
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->very_light_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 328
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->very_light_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 329
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->darkish_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 330
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$d;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 334
    :cond_9
    instance-of v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    if-eqz v1, :cond_c

    .line 336
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 338
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_a
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 342
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_b
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$c;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getCorrectPlateSideImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 346
    :cond_c
    instance-of v1, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    if-eqz v1, :cond_10

    .line 348
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 350
    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_d
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 354
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_e
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_f
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->j:Lcab/snapp/snappuikit/SnappPlateNumberView$g;

    check-cast v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;

    iget-object v0, v0, Lcab/snapp/snappuikit/SnappPlateNumberView$b;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->getCorrectPlateSideImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    :goto_0
    return-void
.end method

.method static synthetic d(Lcab/snapp/snappuikit/SnappPlateNumberView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setMainNumberPartA(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 373
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcab/snapp/snappuikit/SnappPlateNumberView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setMainNumberPartB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcab/snapp/snappuikit/SnappPlateNumberView;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView;->setIranId(Ljava/lang/String;)V

    return-void
.end method

.method private getCorrectPlateSideImage()I
    .locals 1

    .line 378
    iget v0, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->a:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    return v0

    .line 399
    :pswitch_0
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_maku:I

    return v0

    .line 396
    :pswitch_1
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_kish:I

    return v0

    .line 393
    :pswitch_2
    sget v0, Lcab/snapp/snappuikit/a$d;->ic_plate_freezone_gheshm_new:I

    return v0

    .line 390
    :pswitch_3
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_chabahar:I

    return v0

    .line 381
    :pswitch_4
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_anzali:I

    return v0

    .line 387
    :pswitch_5
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_arvand:I

    return v0

    .line 384
    :pswitch_6
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_aras:I

    return v0

    .line 420
    :pswitch_7
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_maku_old:I

    return v0

    .line 417
    :pswitch_8
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_kish_old:I

    return v0

    .line 414
    :pswitch_9
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_gheshm_old:I

    return v0

    .line 411
    :pswitch_a
    sget v0, Lcab/snapp/snappuikit/a$d;->ic_plate_freezone_chabahar_old:I

    return v0

    .line 402
    :pswitch_b
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_anzali_old:I

    return v0

    .line 408
    :pswitch_c
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_arvand_old:I

    return v0

    .line 405
    :pswitch_d
    sget v0, Lcab/snapp/snappuikit/a$d;->image_plate_flag_aras_old:I

    return v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setIranId(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    return-void
.end method

.method private setIsMotorcycle(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->c:Z

    return-void
.end method

.method private setMainCharacter(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->f:Ljava/lang/String;

    return-void
.end method

.method private setMainNumber(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->e:Ljava/lang/String;

    return-void
.end method

.method private setMainNumberPartA(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    return-void
.end method

.method private setMainNumberPartB(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->h:Ljava/lang/String;

    return-void
.end method

.method private setSideNumber(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->d:Ljava/lang/String;

    return-void
.end method

.method private setViewFrame(Landroid/view/ViewGroup;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->l:Landroid/view/ViewGroup;

    return-void
.end method

.method private setZoneType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->a:I

    return-void
.end method


# virtual methods
.method public updateIranId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->i:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->d()V

    return-void
.end method

.method public updateIsMotorcycle(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->c:Z

    .line 141
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->a()V

    return-void
.end method

.method public updateMainCharacter(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->f:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->d()V

    return-void
.end method

.method public updateMainNumberPartA(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->g:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->d()V

    return-void
.end method

.method public updateMainNumberPartB(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->h:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->d()V

    return-void
.end method

.method public updateZoneType(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcab/snapp/snappuikit/SnappPlateNumberView;->a:I

    .line 135
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappPlateNumberView;->a()V

    return-void
.end method
