#import <AVFoundation/AVFoundation.h>
#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

@interface AudioPlayer : NSObject<AVPlayerItemMetadataOutputPushDelegate>

@property (readonly, nonatomic) AVQueuePlayer *player;
@property (readonly, nonatomic) float speed;

- (instancetype)initWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar playerId:(NSString*)idParam loadConfiguration:(NSDictionary *)loadConfiguration;
- (void)dispose:(BOOL)calledFromDealloc;

@end

enum ProcessingState {
    none,
    loading,
    buffering,
    ready,
    completed
};

enum LoopMode {
    loopOff,
    loopOne,
    loopAll
};
