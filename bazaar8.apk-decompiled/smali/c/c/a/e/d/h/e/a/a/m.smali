.class public final synthetic Lc/c/a/e/d/h/e/a/a/m;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->values()[Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/e/d/h/e/a/a/m;->a:[I

    sget-object v0, Lc/c/a/e/d/h/e/a/a/m;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->NOT_EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/h/e/a/a/m;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->EXISTS:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lc/c/a/e/d/h/e/a/a/m;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;->TEMP:Lcom/farsitel/bazaar/data/feature/cinema/video/download/local/VideoFileStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
