.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mNativeAllocationByteCount:I

.field private mNativeBitmap:J


# direct methods
.method static synthetic -get0(Landroid/graphics/Bitmap$BitmapFinalizer;)J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    return-wide v0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeBitmap"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->-wrap1(J)V

    :goto_0
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    return-void

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->-wrap1(J)V

    goto :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->-wrap1(J)V

    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    throw v1
.end method

.method public setNativeAllocationByteCount(I)V
    .locals 2
    .param p1, "nativeByteCount"    # I

    .prologue
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    :cond_0
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    :cond_1
    return-void
.end method
