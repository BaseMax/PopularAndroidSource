.class public final Lc/e/a/a/m/a/e;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/m/a/e$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[F

.field public static final d:[F

.field public static final e:[F

.field public static final f:[F

.field public static final g:[F


# instance fields
.field public h:I

.field public i:Lc/e/a/a/m/a/e$a;

.field public j:Lc/e/a/a/m/a/e$a;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x9

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uniform mat4 uMvpMatrix;"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "uniform mat3 uTexMatrix;"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "attribute vec4 aPosition;"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "attribute vec2 aTexCoords;"

    aput-object v6, v1, v5

    const-string v6, "varying vec2 vTexCoords;"

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const-string v8, "void main() {"

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v10, 0x6

    const-string v11, "  gl_Position = uMvpMatrix * aPosition;"

    aput-object v11, v1, v10

    const/4 v11, 0x7

    const-string v12, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    aput-object v12, v1, v11

    const-string v12, "}"

    const/16 v13, 0x8

    aput-object v12, v1, v13

    sput-object v1, Lc/e/a/a/m/a/e;->a:[Ljava/lang/String;

    .line 2
    new-array v1, v11, [Ljava/lang/String;

    const-string v11, "#extension GL_OES_EGL_image_external : require"

    aput-object v11, v1, v2

    const-string v2, "precision mediump float;"

    aput-object v2, v1, v3

    const-string v2, "uniform samplerExternalOES uTexture;"

    aput-object v2, v1, v4

    aput-object v6, v1, v5

    aput-object v8, v1, v7

    const-string v2, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    aput-object v2, v1, v9

    aput-object v12, v1, v10

    sput-object v1, Lc/e/a/a/m/a/e;->b:[Ljava/lang/String;

    .line 3
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lc/e/a/a/m/a/e;->c:[F

    .line 4
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lc/e/a/a/m/a/e;->d:[F

    .line 5
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lc/e/a/a/m/a/e;->e:[F

    .line 6
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lc/e/a/a/m/a/e;->f:[F

    .line 7
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lc/e/a/a/m/a/e;->g:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/e/a/a/p/a/d;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/p/a/d;->a:Lc/e/a/a/p/a/d$a;

    .line 2
    iget-object p0, p0, Lc/e/a/a/p/a/d;->b:Lc/e/a/a/p/a/d$a;

    .line 3
    invoke-virtual {v0}, Lc/e/a/a/p/a/d$a;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Lc/e/a/a/p/a/d$a;->a(I)Lc/e/a/a/p/a/d$b;

    move-result-object v0

    iget v0, v0, Lc/e/a/a/p/a/d$b;->a:I

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/p/a/d$a;->a()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lc/e/a/a/p/a/d$a;->a(I)Lc/e/a/a/p/a/d$b;

    move-result-object p0

    iget p0, p0, Lc/e/a/a/p/a/d$b;->a:I

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 7
    sget-object v0, Lc/e/a/a/m/a/e;->a:[Ljava/lang/String;

    sget-object v1, Lc/e/a/a/m/a/e;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lc/e/a/a/o/n;->a([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/a/e;->k:I

    .line 8
    iget v0, p0, Lc/e/a/a/m/a/e;->k:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/a/e;->l:I

    .line 9
    iget v0, p0, Lc/e/a/a/m/a/e;->k:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/a/e;->m:I

    .line 10
    iget v0, p0, Lc/e/a/a/m/a/e;->k:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/a/e;->n:I

    .line 11
    iget v0, p0, Lc/e/a/a/m/a/e;->k:I

    const-string v1, "aTexCoords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/a/e;->o:I

    .line 12
    iget v0, p0, Lc/e/a/a/m/a/e;->k:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/a/e;->p:I

    return-void
.end method

.method public a(I[FZ)V
    .locals 18

    move-object/from16 v0, p0

    if-eqz p3, :cond_0

    .line 13
    iget-object v1, v0, Lc/e/a/a/m/a/e;->j:Lc/e/a/a/m/a/e$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lc/e/a/a/m/a/e;->i:Lc/e/a/a/m/a/e$a;

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 14
    :cond_1
    iget v2, v0, Lc/e/a/a/m/a/e;->k:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 15
    invoke-static {}, Lc/e/a/a/o/n;->a()V

    .line 16
    iget v2, v0, Lc/e/a/a/m/a/e;->n:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 17
    iget v2, v0, Lc/e/a/a/m/a/e;->o:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 18
    invoke-static {}, Lc/e/a/a/o/n;->a()V

    .line 19
    iget v2, v0, Lc/e/a/a/m/a/e;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p3, :cond_2

    .line 20
    sget-object v2, Lc/e/a/a/m/a/e;->e:[F

    goto :goto_1

    :cond_2
    sget-object v2, Lc/e/a/a/m/a/e;->d:[F

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    if-eqz p3, :cond_4

    .line 21
    sget-object v2, Lc/e/a/a/m/a/e;->g:[F

    goto :goto_1

    :cond_4
    sget-object v2, Lc/e/a/a/m/a/e;->f:[F

    goto :goto_1

    .line 22
    :cond_5
    sget-object v2, Lc/e/a/a/m/a/e;->c:[F

    .line 23
    :goto_1
    iget v4, v0, Lc/e/a/a/m/a/e;->m:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 24
    iget v2, v0, Lc/e/a/a/m/a/e;->l:I

    move-object/from16 v4, p2

    invoke-static {v2, v3, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v2, 0x84c0

    .line 25
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    .line 26
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 27
    iget v2, v0, Lc/e/a/a/m/a/e;->p:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 28
    invoke-static {}, Lc/e/a/a/o/n;->a()V

    .line 29
    iget v6, v0, Lc/e/a/a/m/a/e;->n:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 30
    invoke-static {v1}, Lc/e/a/a/m/a/e$a;->a(Lc/e/a/a/m/a/e$a;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 31
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 32
    invoke-static {}, Lc/e/a/a/o/n;->a()V

    .line 33
    iget v12, v0, Lc/e/a/a/m/a/e;->o:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 34
    invoke-static {v1}, Lc/e/a/a/m/a/e$a;->b(Lc/e/a/a/m/a/e$a;)Ljava/nio/FloatBuffer;

    move-result-object v17

    .line 35
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 36
    invoke-static {}, Lc/e/a/a/o/n;->a()V

    .line 37
    invoke-static {v1}, Lc/e/a/a/m/a/e$a;->c(Lc/e/a/a/m/a/e$a;)I

    move-result v2

    invoke-static {v1}, Lc/e/a/a/m/a/e$a;->d(Lc/e/a/a/m/a/e$a;)I

    move-result v1

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 38
    invoke-static {}, Lc/e/a/a/o/n;->a()V

    .line 39
    iget v1, v0, Lc/e/a/a/m/a/e;->n:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 40
    iget v1, v0, Lc/e/a/a/m/a/e;->o:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public b(Lc/e/a/a/p/a/d;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc/e/a/a/m/a/e;->a(Lc/e/a/a/p/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lc/e/a/a/p/a/d;->c:I

    iput v0, p0, Lc/e/a/a/m/a/e;->h:I

    .line 3
    new-instance v0, Lc/e/a/a/m/a/e$a;

    iget-object v1, p1, Lc/e/a/a/p/a/d;->a:Lc/e/a/a/p/a/d$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/e/a/a/p/a/d$a;->a(I)Lc/e/a/a/p/a/d$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/e/a/a/m/a/e$a;-><init>(Lc/e/a/a/p/a/d$b;)V

    iput-object v0, p0, Lc/e/a/a/m/a/e;->i:Lc/e/a/a/m/a/e$a;

    .line 4
    iget-boolean v0, p1, Lc/e/a/a/p/a/d;->d:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc/e/a/a/m/a/e;->i:Lc/e/a/a/m/a/e$a;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/e/a/a/m/a/e$a;

    iget-object p1, p1, Lc/e/a/a/p/a/d;->b:Lc/e/a/a/p/a/d$a;

    .line 5
    invoke-virtual {p1, v2}, Lc/e/a/a/p/a/d$a;->a(I)Lc/e/a/a/p/a/d$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/e/a/a/m/a/e$a;-><init>(Lc/e/a/a/p/a/d$b;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lc/e/a/a/m/a/e;->j:Lc/e/a/a/m/a/e$a;

    return-void
.end method
