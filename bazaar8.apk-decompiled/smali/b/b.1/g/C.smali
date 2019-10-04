.class public Lb/b/g/C;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/g/C$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lb/b/g/na;

.field public c:Lb/b/g/na;

.field public d:Lb/b/g/na;

.field public e:Lb/b/g/na;

.field public f:Lb/b/g/na;

.field public g:Lb/b/g/na;

.field public h:Lb/b/g/na;

.field public final i:Lb/b/g/D;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/b/g/C;->j:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb/b/g/C;->k:I

    .line 4
    iput-object p1, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    .line 5
    new-instance p1, Lb/b/g/D;

    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lb/b/g/D;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lb/b/g/C;->i:Lb/b/g/D;

    return-void
.end method

.method public static a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;
    .locals 0

    .line 193
    invoke-virtual {p1, p0, p2}, Lb/b/g/m;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 194
    new-instance p1, Lb/b/g/na;

    invoke-direct {p1}, Lb/b/g/na;-><init>()V

    const/4 p2, 0x1

    .line 195
    iput-boolean p2, p1, Lb/b/g/na;->d:Z

    .line 196
    iput-object p0, p1, Lb/b/g/na;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 181
    iget-object v0, p0, Lb/b/g/C;->b:Lb/b/g/na;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/C;->c:Lb/b/g/na;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/C;->d:Lb/b/g/na;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/C;->e:Lb/b/g/na;

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    aget-object v3, v0, v2

    iget-object v4, p0, Lb/b/g/C;->b:Lb/b/g/na;

    invoke-virtual {p0, v3, v4}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V

    const/4 v3, 0x1

    .line 184
    aget-object v3, v0, v3

    iget-object v4, p0, Lb/b/g/C;->c:Lb/b/g/na;

    invoke-virtual {p0, v3, v4}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V

    .line 185
    aget-object v3, v0, v1

    iget-object v4, p0, Lb/b/g/C;->d:Lb/b/g/na;

    invoke-virtual {p0, v3, v4}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V

    const/4 v3, 0x3

    .line 186
    aget-object v0, v0, v3

    iget-object v3, p0, Lb/b/g/C;->e:Lb/b/g/na;

    invoke-virtual {p0, v0, v3}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V

    .line 187
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 188
    iget-object v0, p0, Lb/b/g/C;->f:Lb/b/g/na;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/g/C;->g:Lb/b/g/na;

    if-eqz v0, :cond_3

    .line 189
    :cond_2
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    aget-object v2, v0, v2

    iget-object v3, p0, Lb/b/g/C;->f:Lb/b/g/na;

    invoke-virtual {p0, v2, v3}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V

    .line 191
    aget-object v0, v0, v1

    iget-object v1, p0, Lb/b/g/C;->g:Lb/b/g/na;

    invoke-virtual {p0, v0, v1}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V

    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0, p1}, Lb/b/g/D;->b(I)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    .line 199
    sget-boolean v0, Lb/i/l/b;->a:Z

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lb/b/g/C;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2}, Lb/b/g/C;->b(IF)V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 203
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/b/g/D;->a(IIII)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 3

    .line 161
    sget-object v0, Lb/b/j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Lb/b/g/pa;->a(Landroid/content/Context;I[I)Lb/b/g/pa;

    move-result-object p2

    .line 162
    sget v0, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    sget v0, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Lb/b/g/pa;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/g/C;->a(Z)V

    .line 164
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    sget v0, Lb/b/j;->TextAppearance_android_textColor:I

    .line 165
    invoke-virtual {p2, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget v0, Lb/b/j;->TextAppearance_android_textColor:I

    .line 167
    invoke-virtual {p2, v0}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v2, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 169
    :cond_1
    sget v0, Lb/b/j;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    sget v0, Lb/b/j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Lb/b/g/pa;->c(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    :cond_2
    invoke-virtual {p0, p1, p2}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/pa;)V

    .line 173
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    sget p1, Lb/b/j;->TextAppearance_fontVariationSettings:I

    .line 174
    invoke-virtual {p2, p1}, Lb/b/g/pa;->g(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    sget p1, Lb/b/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {p2, p1}, Lb/b/g/pa;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 176
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 177
    :cond_3
    invoke-virtual {p2}, Lb/b/g/pa;->a()V

    .line 178
    iget-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    .line 179
    iget-object p2, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    iget v0, p0, Lb/b/g/C;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/content/Context;Lb/b/g/pa;)V
    .locals 8

    .line 130
    sget v0, Lb/b/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Lb/b/g/C;->j:I

    invoke-virtual {p2, v0, v1}, Lb/b/g/pa;->d(II)I

    move-result v0

    iput v0, p0, Lb/b/g/C;->j:I

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    .line 132
    sget v0, Lb/b/j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v3}, Lb/b/g/pa;->d(II)I

    move-result v0

    iput v0, p0, Lb/b/g/C;->k:I

    .line 133
    iget v0, p0, Lb/b/g/C;->k:I

    if-eq v0, v3, :cond_0

    .line 134
    iget v0, p0, Lb/b/g/C;->j:I

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iput v0, p0, Lb/b/g/C;->j:I

    .line 135
    :cond_0
    sget v0, Lb/b/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_6

    sget v0, Lb/b/j;->TextAppearance_fontFamily:I

    .line 136
    invoke-virtual {p2, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    sget p1, Lb/b/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Lb/b/g/pa;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 138
    iput-boolean v4, p0, Lb/b/g/C;->m:Z

    .line 139
    sget p1, Lb/b/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v5}, Lb/b/g/pa;->d(II)I

    move-result p1

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 141
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 142
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    .line 144
    sget v0, Lb/b/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lb/b/j;->TextAppearance_fontFamily:I

    goto :goto_2

    :cond_7
    sget v0, Lb/b/j;->TextAppearance_android_fontFamily:I

    .line 145
    :goto_2
    iget v6, p0, Lb/b/g/C;->k:I

    .line 146
    iget v7, p0, Lb/b/g/C;->j:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    .line 148
    new-instance p1, Lb/b/g/C$a;

    invoke-direct {p1, p0, v6, v7}, Lb/b/g/C$a;-><init>(Lb/b/g/C;II)V

    .line 149
    :try_start_0
    iget v6, p0, Lb/b/g/C;->j:I

    invoke-virtual {p2, v0, v6, p1}, Lb/b/g/pa;->a(IILb/i/b/a/h$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 150
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_9

    iget v6, p0, Lb/b/g/C;->k:I

    if-eq v6, v3, :cond_9

    .line 151
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Lb/b/g/C;->k:I

    iget v7, p0, Lb/b/g/C;->j:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    .line 152
    :goto_3
    invoke-static {p1, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    goto :goto_4

    .line 153
    :cond_9
    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    .line 154
    :cond_a
    :goto_4
    iget-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lb/b/g/C;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    nop

    .line 155
    :cond_c
    :goto_6
    iget-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    .line 156
    invoke-virtual {p2, v0}, Lb/b/g/pa;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 157
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, Lb/b/g/C;->k:I

    if-eq p2, v3, :cond_e

    .line 158
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lb/b/g/C;->k:I

    iget v0, p0, Lb/b/g/C;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    .line 159
    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    goto :goto_7

    .line 160
    :cond_e
    iget p2, p0, Lb/b/g/C;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_7
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lb/b/g/na;

    invoke-direct {v0}, Lb/b/g/na;-><init>()V

    iput-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    .line 207
    :cond_0
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    iput-object p1, v0, Lb/b/g/na;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 208
    :goto_0
    iput-boolean p1, v0, Lb/b/g/na;->d:Z

    .line 209
    invoke-virtual {p0}, Lb/b/g/C;->l()V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lb/b/g/na;

    invoke-direct {v0}, Lb/b/g/na;-><init>()V

    iput-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    .line 212
    :cond_0
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    iput-object p1, v0, Lb/b/g/na;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 213
    :goto_0
    iput-boolean p1, v0, Lb/b/g/na;->c:Z

    .line 214
    invoke-virtual {p0}, Lb/b/g/C;->l()V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lb/b/g/C;->m:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iput-object p1, p0, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_5

    if-nez p5, :cond_0

    if-eqz p6, :cond_5

    .line 216
    :cond_0
    iget-object p1, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 217
    iget-object p3, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    aget-object p5, p1, v5

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    aget-object p2, p1, v3

    :goto_1
    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    aget-object p6, p1, v4

    :goto_2
    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    aget-object p4, p1, v2

    :goto_3
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_f

    .line 218
    :cond_6
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, v1, :cond_a

    .line 219
    iget-object p5, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 220
    aget-object p6, p5, v5

    if-nez p6, :cond_7

    aget-object p6, p5, v4

    if-eqz p6, :cond_a

    .line 221
    :cond_7
    iget-object p1, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    aget-object p2, p5, v3

    :goto_4
    aget-object p6, p5, v4

    if-eqz p4, :cond_9

    goto :goto_5

    :cond_9
    aget-object p4, p5, v2

    :goto_5
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 222
    :cond_a
    iget-object p5, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 223
    iget-object p6, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    aget-object p1, p5, v5

    :goto_6
    if-eqz p2, :cond_c

    goto :goto_7

    :cond_c
    aget-object p2, p5, v3

    :goto_7
    if-eqz p3, :cond_d

    goto :goto_8

    :cond_d
    aget-object p3, p5, v4

    :goto_8
    if-eqz p4, :cond_e

    goto :goto_9

    :cond_e
    aget-object p4, p5, v2

    :goto_9
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_a
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lb/b/g/m;->a(Landroid/graphics/drawable/Drawable;Lb/b/g/na;[I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1
    iget-object v2, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-static {}, Lb/b/g/m;->b()Lb/b/g/m;

    move-result-object v3

    .line 3
    sget-object v4, Lb/b/j;->AppCompatTextHelper:[I

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v1, v5}, Lb/b/g/pa;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lb/b/g/pa;

    move-result-object v4

    .line 4
    sget v6, Lb/b/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Lb/b/g/pa;->g(II)I

    move-result v6

    .line 5
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v4, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableLeft:I

    .line 7
    invoke-virtual {v4, v9, v5}, Lb/b/g/pa;->g(II)I

    move-result v9

    .line 8
    invoke-static {v2, v3, v9}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;

    move-result-object v9

    iput-object v9, v7, Lb/b/g/C;->b:Lb/b/g/na;

    .line 9
    :cond_0
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v4, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 10
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableTop:I

    .line 11
    invoke-virtual {v4, v9, v5}, Lb/b/g/pa;->g(II)I

    move-result v9

    .line 12
    invoke-static {v2, v3, v9}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;

    move-result-object v9

    iput-object v9, v7, Lb/b/g/C;->c:Lb/b/g/na;

    .line 13
    :cond_1
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v4, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 14
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableRight:I

    .line 15
    invoke-virtual {v4, v9, v5}, Lb/b/g/pa;->g(II)I

    move-result v9

    .line 16
    invoke-static {v2, v3, v9}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;

    move-result-object v9

    iput-object v9, v7, Lb/b/g/C;->d:Lb/b/g/na;

    .line 17
    :cond_2
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v4, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 18
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableBottom:I

    .line 19
    invoke-virtual {v4, v9, v5}, Lb/b/g/pa;->g(II)I

    move-result v9

    .line 20
    invoke-static {v2, v3, v9}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;

    move-result-object v9

    iput-object v9, v7, Lb/b/g/C;->e:Lb/b/g/na;

    .line 21
    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    .line 22
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v4, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 23
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableStart:I

    .line 24
    invoke-virtual {v4, v9, v5}, Lb/b/g/pa;->g(II)I

    move-result v9

    .line 25
    invoke-static {v2, v3, v9}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;

    move-result-object v9

    iput-object v9, v7, Lb/b/g/C;->f:Lb/b/g/na;

    .line 26
    :cond_4
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v4, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 27
    sget v9, Lb/b/j;->AppCompatTextHelper_android_drawableEnd:I

    .line 28
    invoke-virtual {v4, v9, v5}, Lb/b/g/pa;->g(II)I

    move-result v9

    .line 29
    invoke-static {v2, v3, v9}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/m;I)Lb/b/g/na;

    move-result-object v9

    iput-object v9, v7, Lb/b/g/C;->g:Lb/b/g/na;

    .line 30
    :cond_5
    invoke-virtual {v4}, Lb/b/g/pa;->a()V

    .line 31
    iget-object v4, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    .line 32
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v9, 0x1a

    const/16 v11, 0x17

    if-eq v6, v8, :cond_d

    .line 33
    sget-object v13, Lb/b/j;->TextAppearance:[I

    invoke-static {v2, v6, v13}, Lb/b/g/pa;->a(Landroid/content/Context;I[I)Lb/b/g/pa;

    move-result-object v6

    if-nez v4, :cond_6

    .line 34
    sget v13, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v13}, Lb/b/g/pa;->g(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 35
    sget v13, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v13, v5}, Lb/b/g/pa;->a(IZ)Z

    move-result v13

    move v14, v13

    const/4 v13, 0x1

    goto :goto_0

    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 36
    :goto_0
    invoke-virtual {v7, v2, v6}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/pa;)V

    .line 37
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v11, :cond_a

    .line 38
    sget v15, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v15}, Lb/b/g/pa;->g(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 39
    sget v15, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v15}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    .line 40
    :goto_1
    sget v10, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v10}, Lb/b/g/pa;->g(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 41
    sget v10, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v10}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    .line 42
    :goto_2
    sget v12, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v12}, Lb/b/g/pa;->g(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 43
    sget v12, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v12}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v17, v15

    move-object v15, v12

    move-object/from16 v12, v17

    goto :goto_4

    :cond_9
    move-object v12, v15

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_3
    const/4 v15, 0x0

    .line 44
    :goto_4
    sget v8, Lb/b/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v8}, Lb/b/g/pa;->g(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 45
    sget v8, Lb/b/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v8}, Lb/b/g/pa;->d(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_b
    const/4 v8, 0x0

    .line 46
    :goto_5
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v9, :cond_c

    sget v11, Lb/b/j;->TextAppearance_fontVariationSettings:I

    .line 47
    invoke-virtual {v6, v11}, Lb/b/g/pa;->g(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 48
    sget v11, Lb/b/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v11}, Lb/b/g/pa;->d(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    .line 49
    :goto_6
    invoke-virtual {v6}, Lb/b/g/pa;->a()V

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 50
    :goto_7
    sget-object v6, Lb/b/j;->TextAppearance:[I

    invoke-static {v2, v0, v6, v1, v5}, Lb/b/g/pa;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lb/b/g/pa;

    move-result-object v6

    if-nez v4, :cond_e

    .line 51
    sget v9, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v9}, Lb/b/g/pa;->g(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 52
    sget v9, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v9, v5}, Lb/b/g/pa;->a(IZ)Z

    move-result v14

    const/4 v13, 0x1

    .line 53
    :cond_e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v9, v5, :cond_11

    .line 54
    sget v5, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->g(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 55
    sget v5, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 56
    :cond_f
    sget v5, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->g(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 57
    sget v5, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 58
    :cond_10
    sget v5, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->g(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 59
    sget v5, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 60
    :cond_11
    sget v5, Lb/b/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->g(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 61
    sget v5, Lb/b/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 62
    :cond_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v5, v9, :cond_13

    sget v5, Lb/b/j;->TextAppearance_fontVariationSettings:I

    .line 63
    invoke-virtual {v6, v5}, Lb/b/g/pa;->g(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 64
    sget v5, Lb/b/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v5}, Lb/b/g/pa;->d(I)Ljava/lang/String;

    move-result-object v11

    .line 65
    :cond_13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v5, v9, :cond_14

    sget v5, Lb/b/j;->TextAppearance_android_textSize:I

    .line 66
    invoke-virtual {v6, v5}, Lb/b/g/pa;->g(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 67
    sget v5, Lb/b/j;->TextAppearance_android_textSize:I

    const/4 v9, -0x1

    invoke-virtual {v6, v5, v9}, Lb/b/g/pa;->c(II)I

    move-result v5

    if-nez v5, :cond_14

    .line 68
    iget-object v5, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_8

    :cond_14
    move-object/from16 v16, v3

    .line 69
    :goto_8
    invoke-virtual {v7, v2, v6}, Lb/b/g/C;->a(Landroid/content/Context;Lb/b/g/pa;)V

    .line 70
    invoke-virtual {v6}, Lb/b/g/pa;->a()V

    if-eqz v12, :cond_15

    .line 71
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    if-eqz v10, :cond_16

    .line 72
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v15, :cond_17

    .line 73
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-nez v4, :cond_18

    if-eqz v13, :cond_18

    .line 74
    invoke-virtual {v7, v14}, Lb/b/g/C;->a(Z)V

    .line 75
    :cond_18
    iget-object v3, v7, Lb/b/g/C;->l:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1a

    .line 76
    iget v4, v7, Lb/b/g/C;->k:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    .line 77
    iget-object v4, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    iget v5, v7, Lb/b/g/C;->j:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_9

    .line 78
    :cond_19
    iget-object v4, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    :goto_9
    if-eqz v11, :cond_1b

    .line 79
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1b
    if-eqz v8, :cond_1d

    .line 80
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1c

    .line 81
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_a

    :cond_1c
    const/16 v4, 0x15

    if-lt v3, v4, :cond_1d

    const/16 v3, 0x2c

    .line 82
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v4, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 84
    :cond_1d
    :goto_a
    iget-object v3, v7, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v3, v0, v1}, Lb/b/g/D;->a(Landroid/util/AttributeSet;I)V

    .line 85
    sget-boolean v1, Lb/i/l/b;->a:Z

    if-eqz v1, :cond_1f

    .line 86
    iget-object v1, v7, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v1}, Lb/b/g/D;->g()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 87
    iget-object v1, v7, Lb/b/g/C;->i:Lb/b/g/D;

    .line 88
    invoke-virtual {v1}, Lb/b/g/D;->f()[I

    move-result-object v1

    .line 89
    array-length v3, v1

    if-lez v3, :cond_1f

    .line 90
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    .line 91
    iget-object v1, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    iget-object v3, v7, Lb/b/g/C;->i:Lb/b/g/D;

    .line 92
    invoke-virtual {v3}, Lb/b/g/D;->d()I

    move-result v3

    iget-object v4, v7, Lb/b/g/C;->i:Lb/b/g/D;

    .line 93
    invoke-virtual {v4}, Lb/b/g/D;->c()I

    move-result v4

    iget-object v5, v7, Lb/b/g/C;->i:Lb/b/g/D;

    .line 94
    invoke-virtual {v5}, Lb/b/g/D;->e()I

    move-result v5

    const/4 v6, 0x0

    .line 95
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_b

    :cond_1e
    const/4 v6, 0x0

    .line 96
    iget-object v3, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 97
    :cond_1f
    :goto_b
    sget-object v1, Lb/b/j;->AppCompatTextView:[I

    invoke-static {v2, v0, v1}, Lb/b/g/pa;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lb/b/g/pa;

    move-result-object v8

    .line 98
    sget v0, Lb/b/j;->AppCompatTextView_drawableLeftCompat:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_20

    move-object/from16 v3, v16

    .line 99
    invoke-virtual {v3, v2, v0}, Lb/b/g/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_c

    :cond_20
    move-object/from16 v3, v16

    const/4 v4, 0x0

    .line 100
    :goto_c
    sget v0, Lb/b/j;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 101
    invoke-virtual {v3, v2, v0}, Lb/b/g/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_d

    :cond_21
    const/4 v5, 0x0

    .line 102
    :goto_d
    sget v0, Lb/b/j;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_22

    .line 103
    invoke-virtual {v3, v2, v0}, Lb/b/g/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_e

    :cond_22
    const/4 v6, 0x0

    .line 104
    :goto_e
    sget v0, Lb/b/j;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_23

    .line 105
    invoke-virtual {v3, v2, v0}, Lb/b/g/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_f

    :cond_23
    const/4 v9, 0x0

    .line 106
    :goto_f
    sget v0, Lb/b/j;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_24

    .line 107
    invoke-virtual {v3, v2, v0}, Lb/b/g/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    goto :goto_10

    :cond_24
    const/4 v10, 0x0

    .line 108
    :goto_10
    sget v0, Lb/b/j;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 109
    invoke-virtual {v3, v2, v0}, Lb/b/g/m;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v11, v0

    goto :goto_11

    :cond_25
    const/4 v11, 0x0

    :goto_11
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    .line 110
    invoke-virtual/range {v0 .. v6}, Lb/b/g/C;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget v0, Lb/b/j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 112
    sget v0, Lb/b/j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 113
    iget-object v1, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lb/i/l/j;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 114
    :cond_26
    sget v0, Lb/b/j;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v8, v0}, Lb/b/g/pa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 115
    sget v0, Lb/b/j;->AppCompatTextView_drawableTintMode:I

    const/4 v1, -0x1

    .line 116
    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->d(II)I

    move-result v0

    const/4 v2, 0x0

    .line 117
    invoke-static {v0, v2}, Lb/b/g/H;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 118
    iget-object v2, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lb/i/l/j;->a(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_12

    :cond_27
    const/4 v1, -0x1

    .line 119
    :goto_12
    sget v0, Lb/b/j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v8, v0, v1}, Lb/b/g/pa;->c(II)I

    move-result v0

    .line 120
    sget v2, Lb/b/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v8, v2, v1}, Lb/b/g/pa;->c(II)I

    move-result v2

    .line 121
    sget v3, Lb/b/j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v8, v3, v1}, Lb/b/g/pa;->c(II)I

    move-result v3

    .line 122
    invoke-virtual {v8}, Lb/b/g/pa;->a()V

    if-eq v0, v1, :cond_28

    .line 123
    iget-object v4, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lb/i/l/j;->b(Landroid/widget/TextView;I)V

    :cond_28
    if-eq v2, v1, :cond_29

    .line 124
    iget-object v0, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lb/i/l/j;->c(Landroid/widget/TextView;I)V

    :cond_29
    if-eq v3, v1, :cond_2a

    .line 125
    iget-object v0, v7, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lb/i/l/j;->d(Landroid/widget/TextView;I)V

    :cond_2a
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lb/b/g/C;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public a(ZIIII)V
    .locals 0

    .line 197
    sget-boolean p1, Lb/i/l/b;->a:Z

    if-nez p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lb/b/g/C;->b()V

    :cond_0
    return-void
.end method

.method public a([II)V
    .locals 1

    .line 204
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0, p1, p2}, Lb/b/g/D;->a([II)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->a()V

    return-void
.end method

.method public final b(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0, p1, p2}, Lb/b/g/D;->a(IF)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->e()I

    move-result v0

    return v0
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->f()[I

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->g()I

    move-result v0

    return v0
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/g/na;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/g/na;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->i:Lb/b/g/D;

    invoke-virtual {v0}, Lb/b/g/D;->h()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/b/g/C;->a()V

    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/C;->h:Lb/b/g/na;

    iput-object v0, p0, Lb/b/g/C;->b:Lb/b/g/na;

    .line 2
    iput-object v0, p0, Lb/b/g/C;->c:Lb/b/g/na;

    .line 3
    iput-object v0, p0, Lb/b/g/C;->d:Lb/b/g/na;

    .line 4
    iput-object v0, p0, Lb/b/g/C;->e:Lb/b/g/na;

    .line 5
    iput-object v0, p0, Lb/b/g/C;->f:Lb/b/g/na;

    .line 6
    iput-object v0, p0, Lb/b/g/C;->g:Lb/b/g/na;

    return-void
.end method
