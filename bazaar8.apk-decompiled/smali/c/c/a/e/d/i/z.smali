.class public final synthetic Lc/c/a/e/d/i/z;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->values()[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/i/z;->a:[I

    sget-object v0, Lc/c/a/e/d/i/z;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->values()[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/i/z;->b:[I

    sget-object v0, Lc/c/a/e/d/i/z;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->b:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->values()[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/i/z;->c:[I

    sget-object v0, Lc/c/a/e/d/i/z;->c:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->c:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->c:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->values()[Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/i/z;->d:[I

    sget-object v0, Lc/c/a/e/d/i/z;->d:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->d:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lc/c/a/e/d/i/z;->d:[I

    sget-object v1, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
